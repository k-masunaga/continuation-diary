class LogsController < ApplicationController

  def show
    @diaries = Diary.all.where(user_id: current_user.id)
  end
end
