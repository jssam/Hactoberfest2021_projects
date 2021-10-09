import time
min = float(input("Number of Minutes: "))
sec = float(input("Number of Seconds: "))

total_time = 60.0 * min + sec

while total_time > 0:
    print("{0} seconds remaining".format(total_time))
    time.sleep(1)
    total_time -= 1

print("Countdown complete.")
