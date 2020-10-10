class AmountsController < ApplicationController
  def new
    # @objectives = Objective.all.where(user_id: current_user.id)
    @amount = Amount.new
  end

  def create
    Amount.create(amount_params)
    redirect_to objective_path(params[:objective_id])
  end

  def show
    @amounts = Amount.all.where(objective_id: params[:id])
    @objective = Objective.find(params[:id])
  end

  private
  def amount_params
    params.require(:amount).permit(:amount).merge(objective_id: params[:objective_id])
  end
end
