class SearchesController < ApplicationController
  def index
    @searches = current_visitor.searches.order(created_at: :desc)

    @trending_queries = Search.group(:query).order("count_id DESC").limit(3).count(:id)

    @previous_searches = current_visitor.searches.last(5).reverse if current_visitor.present?
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
