class UsersController < ApplicationController
  def show
    # user = User.find_by(id: params[:user_id])
    # project = Project.find_by(id: params[:project_id])
    @user = User.find_by(id: params[:user_id], project_id: params[:project_id])
    # if User.find_by(user_id: user.id, project_id: project.id) != nil
    render templat: "show/user"
    # else
    #   render json: { message: "User #{params[:user_id]} has no commits on #{params[:project_id]}" }
    # end
  end
end
