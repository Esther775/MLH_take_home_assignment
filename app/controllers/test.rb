require "http"

@array = HTTP.get("https://api.github.com/repos/eileencodes/rails/commits?sha=main&per_page=100").parse(:json)
p @array[0]["author"]["login"]
