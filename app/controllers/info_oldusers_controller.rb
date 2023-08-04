class InfoOldusersController < ApplicationController

  def new
    @info = InfoOlduser.new
  end

  def create
    @info = InfoOlduser.new(info_params)
    if @info.save
      redirect_to '/'
    else
      # 保存に失敗した場合の処理
      render 'new'
    end
  end

  def edit
    @info = InfoOlduser.find_by(user_id: current_user.id)
  end

  def update
    info = InfoOlduser.find(params[:id])
    if info.update(info_params)
      redirect_to '/'
    else
      render 'edit'
    end
  end

  private
  def info_params
    params.require(:info_olduser).permit(:faculty, :genre_first_id, :genre_second_id, :genre_third_id, :profile, :image).merge(user_id: current_user.id)
  end

end
