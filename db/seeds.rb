# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "rest-client"

puts "getting API data"

def api_key
  ENV["API_KEY"]
end

def node_js_commits
  api_data = { key: api_key }
  data = RestClient.get("https://api.github.com/repos/nodejs/nodejs.org/commits?sha=main&per_page=100")
  data_array = JSON.parse(data)
  data_array.each do |commit|
    Commit.create(
      contributors: [
        id: commit["author"]["id"],
        commit: commit["author"]["login"],
        message: commit["commit"]["message"],
      ],
    )
  end
end

node_js_commits()
puts "Seeded data"
