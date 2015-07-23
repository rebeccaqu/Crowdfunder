class ProjectsController < ApplicationController

  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

    @project.user_id = current_user.id

    if @project.save
      redirect_to user_path(current_user.id)
    else
      render :new
    end
  end

  private

  def project_params
    params.require(:project).permit(:name, :description, :funding_goal, :start_date, :end_date, :category)
  end

end
