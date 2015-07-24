class PledgesController < ApplicationController

  def create

    # create the pledge
    Pledge.create( {user_id: params[:user_id], reward_id: params[:reward_id]} )

    # decrement the reward count
    r = Reward.find(params[:reward_id]).update_column
    r.update_column(:amount, r.amount-1)

    redirect_to project_path(params[:project_id])
  end

end
