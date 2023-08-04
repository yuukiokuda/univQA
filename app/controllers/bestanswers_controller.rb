class BestanswersController < ApplicationController
  def create
    @bestanswer = Bestanswer.create(best_params)
    redirect_to "/"
  end

  private
  def best_params
    params.require(:bestanswer).permit(:best).merge(answer_id: params[:answer_id])
  end
end
