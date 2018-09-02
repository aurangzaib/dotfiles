import pandas as pd
import matplotlib.pyplot as plt


def get_battery_csv(csv_path=".dotfiles/battery_profile.csv"):
  battery_profile = pd.read_csv(csv_path)
  battery_profile.head()
  return battery_profile


def get_date_time(battery_profile):
  battery_date = battery_profile["Date"].values
  battery_time = battery_profile["Time"].values
  return battery_date, battery_time


def get_x_axis_helper(battery_d, battery_t):
  # get date and time from csv given column
  day_month, hour_minute = battery_d.split(".")[::-1], battery_t.split(":")[-1]
  # merge date in format --> yyyymmdd
  date_concatenated, time_concatenated = "", ""
  for __ in day_month:
    date_concatenated += __
  # merge time in format --> hhmm
  for __ in hour_minute:
    time_concatenated += __
  # return merged date & time in format --> yyyymmddhhmm
  return int(date_concatenated + time_concatenated)


def get_x_axis(battery_profile):
  battery_date, battery_time = get_date_time(battery_profile)
  return [get_x_axis_helper(d, t) for d, t in zip(battery_date, battery_time)]


def get_y_axis(battery_profile, column="Capacity"):
  return battery_profile[column].values


profile_type = "Counts"  # Charge, Capacity, Counts, Amperage, Voltage
battery_profile = get_battery_csv()
battery_x_axis = get_x_axis(battery_profile)
battery_y_axis = get_y_axis(battery_profile, column=profile_type)


# draw a plot for charge profile of the macbook battery
plt.plot(battery_x_axis, battery_y_axis)
plt.ylabel('Battery {} Profile'.format(profile_type))
plt.xlabel('Time Period')
plt.show()
