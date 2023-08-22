class UsersController < ApplicationController
  def show
    @nickname = current_user.nickname
    @user = User.find(params[:id])
    @info = @user.info_olduser
    @questions = current_user.questions
    @answers = current_user.answers
  end

  def edit
    @user = current_user
  end

  def update
    @user = current_user

    if user_params[:image].present? # プロフィール画像がアップロードされた場合
      @user.image.attach(user_params[:image])
    end

    if @user.update(user_params.except(:image))
      redirect_to user_path(@user), notice: "ユーザー情報が更新されました。"
    else
      render :edit
    end
  end

  private

  def user_params
    params.require(:user).permit(:nickname, :email, :prefecture_id, :univ_id, :newuser, :image)
  end
end

