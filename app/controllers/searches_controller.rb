class SearchesController < ApplicationController
  def index
    @searches = current_visitor.searches.order(created_at: :desc)
  end

  private

  def search_params
    params.require(:search).permit(:query)
  end
end
