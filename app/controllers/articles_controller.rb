class ArticlesController < ApplicationController
  def index
    @articles = Article.all

    if params[:query].present?
      query = params[:query].strip

      # Filter articles based on query
      @articles = Article.where("title LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")

      # Create a new Search record for the current visitor
      current_visitor.searches.create(query: query)
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
