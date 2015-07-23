class ProjectsController < ApplicationController
  
  def index
    @projects = Project.all
  end

  def new
    # @project = Project.find(params[:id])
  end

  def create
  end

  def show
    @project = Project.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

end
