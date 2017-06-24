class HotelsController < ApplicationController
  def search
    # Get filters and pass them as a hash to the expedia service nad use the global variable to set the filters values
    @filters = search_params.to_hash.deep_symbolize_keys
    # create object from expedia class and execute the search action
    @hotels = Expedia.new(@filters).search
    render :index
  end

  def search_params
    params.permit(:destination, :check_in, :check_out, :star_rating_to, :star_rating_from, :guest_rating_to, :guest_rating_from, :total_rate_to, :total_rate_from)
  end
end
