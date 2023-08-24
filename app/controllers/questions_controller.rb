class QuestionsController < ApplicationController

  def index
    @questions = Question.all
    
  end

  def new
    @question = Question.new
  end

  def create
    Question.create(question_params)
    redirect_to '/'
  end

  def destroy
    question = Question.find(params[:id])
    question.answers.destroy_all
    question.destroy
    redirect_to root_path
  end

  def edit
  end

  def update
    question = Question.find(params[:id])
    question.update(question_params)
    redirect_to root_path
  end

  def show
    @question = Question.find(params[:id])
    @answers = @question.answers #重要
    @bestanswer = Bestanswer.new
    # @answers = @question.answers.includes(:user)
  end


  private

  def question_params
    params.require(:question).permit(:title, :genre_id, :content, :limit_id, :univchoice, :image).merge(user_id: current_user.id)
  end

end
