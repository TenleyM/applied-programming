require "forecast_io"

# configure the Dark Sky API with your API key
ForecastIO.api_key = "221adcc1033da8944da11b88bbe93ace"

# do the heavy lifting, use Global Hub lat/long
forecast = ForecastIO.forecast(42.0574063,-87.6722787).to_hash


# pp = pretty print
# use instead of `puts` to make reading a hash a lot easier
# e.g. `pp forecast`
current_temperature = forecast["currently"]["temperature"]
conditions = forecast["currently"]["summary"]


puts "In #{forecast["timezone"]}, it is currently #{current_temperature} degrees and #{conditions}"
puts "Extended forecast:"
for day in forecast["daily"]["data"]
    puts "A high temperature of #{day["temperatureHigh"]} degrees and #{day["summary"]}"
end

# for i in 0..7
# puts "A high temperature of #{forecast["daily"]["data"][i]["temperatureMax"]} degrees and #{forecast["daily"]["data"][i]["summary"]}"
# end

# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.
# Example output:
#
# In Chicago, it is currently 33.89 degress and Clear
# Extended forecast:
# A high temperature of 36.47 and Possible flurries in the afternoon.
# A high temperature of 33.98 and Mostly cloudy throughout the day.
# A high temperature of 33.94 and Possible light snow until evening.
# A high temperature of 32.73 and Mostly cloudy throughout the day.
# A high temperature of 32.51 and Partly cloudy throughout the day.
# A high temperature of 40.42 and Clear throughout the day.
# A high temperature of 23.21 and Overcast throughout the day.
# A high temperature of 29.12 and Clear throughout the day.