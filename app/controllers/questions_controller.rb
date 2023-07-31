class QuestionsController < ApplicationController

  def index
    @questions = Question.ALL
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to '/'
  end


  private

  def question_params
    params.require(:question).permit(:title, :genre_id, :content, :limit_id, :univcoice, :image).merge(user_id: current_user.id)
  end

end
