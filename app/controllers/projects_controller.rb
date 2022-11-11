class ProjectsController < ApplicationController
  require "http"

  def show
    @project = Project.find_by(id: params[:id])
    if Project.find_by(id: params[:id]) == nil
      render json: { message: "Please input a number associated with a project" }
    else
      # render json: project.users.as_json
      render template: "projects/show"
    end
  end
end
