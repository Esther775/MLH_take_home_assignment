# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
require "http"

def nodejs_commits
  project = Project.create(name: "node_js_data")
  @array = HTTP.get("https://api.github.com/repos/nodejs/nodejs.org/commits?sha=main&per_page=100").parse(:json)
  @array.each do |commit|
    User.create(
      github_username: commit["author"]["login"],
      message: commit["commit"]["message"],
      email: commit["commit"]["author"]["email"],
      project_id: project.id,
      # date:
    )
  end
end

def rails_commits
  project = Project.create(name: "rails_data")
  @array = HTTP.get("https://api.github.com/repos/eileencodes/rails/commits?sha=main&per_page=100").parse(:json)
  @array.each do |commit|
    User.create(
      github_username: commit["commit"]["author"]["name"], #nont sure why ["author"]["login"] is breaking
      message: commit["commit"]["message"],
      email: commit["commit"]["author"]["email"],
      project_id: project.id,
      # date:
    )
  end
end

def ruby_commits
  project = Project.create(name: "ruby_data")
  @array = HTTP.get("https://api.github.com/repos/XrXr/ruby/commits?sha=master&per_page=100").parse(:json)
  @array.each do |commit|
    User.create(
      github_username: commit["author"]["login"],
      message: commit["commit"]["message"],
      email: commit["commit"]["author"]["email"],
      project_id: project.id,
      # date:
    )
  end
end

puts "Seeded data"
nodejs_commits()
# rails_commits()
ruby_commits()
