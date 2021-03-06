class ArticlesController < ApplicationController
  before_action :get_article, only: [:show, :edit, :update, :destroy]
  before_action :require_user, except: [:show, :index]
  before_action :require_same_user, only: [:edit, :update, :destroy]

  def show
  end

  def index 
    @articles = Article.paginate(page: params[:page], per_page: 1)
  end

  def new
    @article = Article.new    
  end

  def create
    @article = Article.new(article_params)
    @article.user = current_user
    if @article.save
      flash[:notice] = "Article was created successful"
      redirect_to @article
    else 
      render 'new'
    end 
  end

  def edit
  end 

  def update
    if @article.update(article_params)
      flash[:notice] = "Article was created successful"
      redirect_to @article
    else 
      render 'edit'
    end
  end

  def destroy
    @article.destroy
    redirect_to articles_path
  end

  private 

  def get_article 
    @article = Article.find(params[:id])
  end

  def article_params
    params.require(:article).permit(:title, :description, :article_body, :github_link, :deployed_link, :image)
  end

  def require_same_user
    if current_user != @article.user
      flash[:alert] = "You can only edit or delete your own article"
      redirect_to @article
    end
  end
end
