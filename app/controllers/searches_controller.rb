class SearchesController < ApplicationController
  def index
    @searches = current_visitor.searches.order(created_at: :desc)

    @trending_queries = Search.group(:query).order("count_id DESC").limit(3).count(:id)
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
