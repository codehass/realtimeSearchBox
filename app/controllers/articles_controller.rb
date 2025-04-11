class ArticlesController < ApplicationController
def index
  @articles = Article.all

  Rails.logger.info "=== Articles#index called ==="
  Rails.logger.info "Query param: #{params[:query].inspect}"

  if params[:query].present?
    query = params[:query].strip
    @articles = Article.where("title LIKE ? OR content LIKE ?", "%#{query}%", "%#{query}%")

    search = current_visitor.searches.create(query: query)
    Rails.logger.info "Search saved? #{search.persisted?}"
    Rails.logger.info "Search errors: #{search.errors.full_messages.inspect}" unless search.persisted?
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
