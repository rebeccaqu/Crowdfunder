class PledgesController < ApplicationController


  def create
    redirect_to project_path(params[:project_id])
  end
end
