require "http"

@array = HTTP.get("https://api.github.com/repos/esther775/mlh_take_home_assignment/stats/contributors").parse(:json)
p @array
