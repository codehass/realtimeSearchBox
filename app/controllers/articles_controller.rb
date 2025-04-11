class ArticlesController < ApplicationController
def index
  @articles = Article.all

  if params[:query].present?
    query = params[:query].strip
    @articles = Article.where("title LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")

    if current_visitor
      current_visitor.searches.create(query: query)
    else
      # Log this issue for debugging
      Rails.logger.warn "Could not record search - no current visitor"
    end
  end
end

  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to articles_path, notice: "Article was successfully created."
    else
      render :new
    end
  end
end
