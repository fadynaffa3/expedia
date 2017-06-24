class Expedia
  URL = 'https://offersvc.expedia.com/offers/v2/getOffers?scenario=deal-finder&page=foo&uid=foo&productType=Hotel&'.freeze

  def initialize(filters = {})
    @parsed_filters = filters.map { |k, v| send(k, v) }.reject(&:nil?)
  end

  def search
    url = search_url
    response = HTTParty.get(url)
    if response.code == 200
      JSON.parse(response.body)['offers']['Hotel'] || []
    else
      []
    end
  end

  def parsed_filters
    @parsed_filters
  end

  private

  def search_url
    URL + @parsed_filters.map { |f| "#{f[0]}=#{f[1]}" }.join('&')
  end

  def destination(value)
    ['destinationName', value] if value.present?
  end

  def check_in(value)
    ['minTripStartDate', value] if value.present?
  end

  def check_out(value)
    ['maxTripStartDate', value] if value.present?
  end

  def star_rating_from(value)
    ['minStarRating', value] if value.present? && value.to_i > 1
  end

  def star_rating_to(value)
    ['maxStarRating', value] if value.present? && value.to_i < 5
  end

  def guest_rating_from(value)
    ['minGuestRating', value] if value.present? && value.to_i > 1
  end

  def guest_rating_to(value)
    ['maxGuestRating', value] if value.present? && value.to_i < 5
  end

  def total_rate_from(value)
    ['minTotalRate', value] if value.present? && value.to_i > 1
  end

  def total_rate_to(value)
    ['maxTotalRate', value] if value.present? && value.to_i < 5
  end
end
