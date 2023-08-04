class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @user = User.find(params[:id])
    @info = @user.info_olduser
    @questions = current_user.questions
    @answers = current_user.answers
  end

end
