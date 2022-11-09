class ProjectsController < ApplicationController
  require "http"

  def show
    if params[:id] == 1
      @array = HTTP.get("https://api.github.com/repos/nodejs/nodejs.org/commits?sha=main&per_page=100").parse(:json)
      # @stats = HTTP.get("https://api.github.com/repos/nodejs/nodejs.org/stats/contributors").parse(:json)
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
end
