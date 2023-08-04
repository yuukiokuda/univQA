class AnswersController < ApplicationController

  def index
    # @questions = Question.find(params[:question_id])
    @question = Question.find(params[:question_id])
    
  end

  def new
    @answer = Answer.new
    @question = Question.find(params[:question_id])
    # @question = Question.find(params[:question_id])
  end

  def create
    @answer = Answer.new(answer_params)
    if @answer.save
      redirect_to '/'
    else
      # 保存に失敗した場合の処理
      render 'new'
    end
  end

    def show
      @question = Question.find(params[:question_id])
      # 回答を表示する際にも、質問情報が必要なため、`@question` を取得しています。
      @answer = Answer.find(params[:id])
      # 回答情報を取得しています。
      # @comments = Comment.find(params[:answer_id])
      @comments = @answer.comments
      @comment = Comment.new
    end

  def answer_params
    params.require(:answer).permit(:content, :image).merge(user_id: current_user.id, question_id: params[:question_id])
    # params.require(:answer).permit(:content, :image, :user_id, :question_id)
  end
end
