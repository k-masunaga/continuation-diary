class UsersController < ApplicationController
  def new
    redirect_to user_path(current_user.id)
  end

  def show
    @user = User.find(params[:id])
    @objectives = Objective.all.where(user_id: current_user.id)
    @diaries = Diary.all.where(user_id: current_user.id).order("created_at DESC").first(3)
  end

  def delete
    redirect_to new_user_session_path
  end
end
