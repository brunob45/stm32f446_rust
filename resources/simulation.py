#!/usr/bin/env python3

from enum import Enum


class SyncState(Enum):
    IDLE = 0
    HALF = 1
    FULL = 2


class Tooth:
    def __init__(self, n, a, g) -> None:
        self.n = n
        self.a = a
        self.g = g

    def __repr__(self) -> str:
        return f"{self.n}: {self.a} {self.g}"


class Schedule:
    def __init__(self, tooth, delay) -> None:
        self.tooth = tooth
        self.delay = delay


class Wheel:
    def __init__(self, n_teeth, missing_teeth) -> None:
        self.gap = 720 / n_teeth
        self.current_tooth = 0
        self.sync_state = SyncState.IDLE
        self.trigger_history = [0] * 5
        self.gap_history = [0] * 5

        self.last_teeth = n_teeth - missing_teeth
        self.teeth = [None] + [
            Tooth(
                x + 1,
                int(x * self.gap),
                int(self.gap if x < self.last_teeth - 1 else 2 * self.gap),
            )
            for x in range(n_teeth - missing_teeth)
        ]

    def get_tooth_at_angle(self, angle) -> tuple[Tooth, int]:
        target = angle % 720
        for t in self.teeth[1:]:
            if t.a <= target:
                result = t
            if t.a >= target:
                break
        else:
            result = self.teeth[-1]

        delay = self.gap_history[0] * (target - result.a)
        if result.n == self.last_teeth:
            """missing tooth"""
            delay *= 2

        return (result, delay / result.g)

    def new_tooth(self, now):
        current_gap = now - self.trigger_history[0]
        if self.sync_state == SyncState.IDLE:
            if self.current_tooth == 0:
                self.current_tooth = 1
            elif self.gap_history[0] == 0:
                pass
            else:
                """look for long gap"""
                if current_gap > self.gap_history[0] * 1.5:
                    self.sync_state = SyncState.HALF

        elif self.sync_state == SyncState.HALF:
            """validate shorter gap"""
            if current_gap < self.gap_history[0] / 1.5:
                self.sync_state = SyncState.FULL
                self.current_tooth = 2
            else:
                self.sync_state = SyncState.IDLE

        elif self.sync_state == SyncState.FULL:
            if self.current_tooth < self.last_teeth:
                self.current_tooth += 1
            else:
                self.current_tooth = 1

        for i in [3, 2, 1, 0]:
            self.gap_history[i + 1] = self.gap_history[i]
            self.trigger_history[i + 1] = self.trigger_history[i]

        self.gap_history[0] = current_gap
        self.trigger_history[0] = now

        print(f"{w.sync_state}, {self.current_tooth}, {self.teeth[self.current_tooth]}")
        print(self.gap_history)
        print()


print()
w = Wheel(24, 1)

w.new_tooth(100)
w.new_tooth(200)
w.new_tooth(300)
w.new_tooth(400)
w.new_tooth(600)
w.new_tooth(800)
w.new_tooth(900)
w.new_tooth(1000)
w.new_tooth(1200)
w.new_tooth(1300)
w.new_tooth(1400)

now = 1400
for i in range(30):
    if w.current_tooth == w.last_teeth:
        now += 200
    else:
        now += 100

    w.new_tooth(now)

print(w.get_tooth_at_angle(25))
print(w.get_tooth_at_angle(35))
print(w.get_tooth_at_angle(655))
print(w.get_tooth_at_angle(660))
print(w.get_tooth_at_angle(665))
print(w.get_tooth_at_angle(715))
print(w.get_tooth_at_angle(720))
print(w.get_tooth_at_angle(725))
