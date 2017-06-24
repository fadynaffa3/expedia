class HotelsController < ApplicationController
  def search
    @filters = search_params.to_hash.deep_symbolize_keys
    @hotels = Expedia.new(@filters).search
    render :index
  end

  def search_params
    params.permit(:destination, :check_in, :check_out, :star_rating_to, :star_rating_from, :guest_rating_to, :guest_rating_from, :total_rate_to, :total_rate_from)
  end
end
