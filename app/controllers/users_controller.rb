class UsersController < ApplicationController
  # before_action :get_article, only: [:show, :edit, :update, :destroy]

  def show
  end

  def new
    @user = User.new
  end

  # def create
  #   @article = Article.new(article_params)
  #   @article.user = User.first
  #   if @article.save
  #     flash[:notice] = "Article was created successful"
  #     redirect_to @article
  #   else 
  #     render 'new'
  #   end 
  # end
end
