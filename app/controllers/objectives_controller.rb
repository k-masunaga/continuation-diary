class ObjectivesController < ApplicationController
  def new
    @objective = Objective.new
  end

  def create
    Objective.create(post_params)
    @user = current_user.id
    redirect_to user_path(@user)
  end

  private
  def post_params
    params.require(:objective).permit(:aim, :unit).merge(user_id: current_user.id)
  end
end
