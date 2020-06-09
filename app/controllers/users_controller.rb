class UsersController < ApplicationController
  # before_action :get_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  def edit
  end 

  def update
    if @user.update(article_params)
      flash[:notice] = "User was created successful"
      redirect_to articles_path
    else 
      render 'edit'
    end
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:notice] = "User was created successful"
      redirect_to articles_path
    else 
      render 'new'
    end 
  end

  private

  def user_params
    params.require(:user).permit(:username, :email, :password)
  end
end
