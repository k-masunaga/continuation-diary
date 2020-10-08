class DiariesController < ApplicationController
  def new
    @diary = Diary.new
  end

  def create
    Diary.create(diary_params)
    redirect_to user_path(current_user.id)
  end

  private
  def diary_params
    params.require(:diary).permit(
      :title, :valuation, :sleep, :feeling, 
      :short_term_goals, :long_term_goals, 
      :plan, :remark).merge(user_id: current_user.id)
  end
end
