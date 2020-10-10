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
    @amounts = Amount.all.where(objective_id: params[:id]).order("created_at DESC").first(5)
    @detail = Amount.select("amount").where(objective_id: params[:id])
    @sum = Amount.all.sum(:amount)
  end

  def destroy
    objective = Objective.find(params[:id])
    objective.destroy
    redirect_to objective_delete_path(params[:id])
  end

  private
  def post_params
    params.require(:objective).permit(:aim, :unit).merge(user_id: current_user.id)
  end
end
