class ObjectivesController < ApplicationController
  def new
    @objective = Objective.new
  end

  def create
    Objective.create(post_params)
    redirect_to user_path(current_user.id)
  end

  def show
    @objective = Objective.find(params[:id])
    @amount = Amount.new
  end

  private
  def post_params
    params.require(:objective).permit(:aim, :unit).merge(user_id: current_user.id)
  end
end
