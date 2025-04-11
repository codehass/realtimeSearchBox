class SearchesController < ApplicationController
def index
  @searches = current_visitor&.searches&.order(created_at: :desc) || []

  @trending_queries = Search.group(:query).order("count_id DESC").limit(3).count(:id)

  @previous_searches = if current_visitor.present?
                          current_visitor.searches.last(5).reverse
  else
                        []
  end
end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
