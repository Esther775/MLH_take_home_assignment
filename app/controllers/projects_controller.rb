class ProjectsController < ApplicationController
  require "http"

  def index
    if params[:id] == 1
      @array = HTTP.get("https://api.github.com/repos/nodejs/nodejs.org/commits?sha=main").parse(:json)
      # render json: nodejs_array[0]["commit"]["author"]["name"].as_json
      # render json: @nodejs_array[0]
      render template: "projects/index"
    elsif params[:id] == 2
      @array = HTTP.get("https://api.github.com/repos/eileencodes/rails/commits").parse(:json)
      render template: "projects/index"
    elsif params[:id] == 3
      @array = HTTP.get("https://api.github.com/repos/XrXr/ruby/commits").parse(:json)
      render template: "projects/index"
    else
      render template: "invalid param id"
    end
  end

  def show
    nodejs_array = HTTP.get("https://api.github.com/repos/hursittarcan/nodejs.org/commits").parse(:json)
  end

  # {
  #   "id": 1,
  #   "contributors": [
  #     { id: 1, github_username: "foobar" },
  #     { id: 2, github_username: "foobar_1" },
  #     { id: 3, github_username: "foobar_2" },
  #     ...
  #   ],
  #   "contributions": {
  #     "additions": "100000",
  #     "deletions": "20000"
  #   }
  # }

end

#got the data
# assign data to a variable
# parse through the data and
