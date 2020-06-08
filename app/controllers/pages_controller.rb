class PagesController < ApplicationController

  def homepage
    @articles = Article.all.limit(3)
  end

  def about
  end

end
