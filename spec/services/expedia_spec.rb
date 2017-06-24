require 'rails_helper'

describe Expedia do
  describe '#parse_filters' do
    it 'Returns the correct filters' do
      filters = { destination: 'Jordan' }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([['destinationName', 'Jordan']])
    end

    it 'Returns an empty array when no filters are selected' do
      filters = {}
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([])
    end

    it "Doesn't add unwanted edges to parsed filters" do
      filters = {
        star_rating_from: 1,
        star_rating_to: 5,
        total_rate_from: 1,
        total_rate_to: 5,
        guest_rating_from: 1,
        guest_rating_to: 5
      }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([])
    end

    it 'parse all range filters' do
      filters = {
        star_rating_from: 2,
        star_rating_to: 3,
        total_rate_from: 2,
        total_rate_to: 3,
        guest_rating_from: 2,
        guest_rating_to: 3
      }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([['minStarRating', 2], ['maxStarRating', 3], ['minTotalRate', 2], ['maxTotalRate', 3], ['minGuestRating', 2], ['maxGuestRating', 3]])
    end

    it 'parse date filters' do
      filters = {
        check_in: '2017-01-01',
        check_out: '2017-01-01'
      }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([['minTripStartDate', '2017-01-01'], ['maxTripStartDate', '2017-01-01']])
    end

    it 'parse length of stay filter' do
      filters = { length_of_stay: '2' }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([['lengthOfStay', '2']])
    end

    it "Doesn't empty valus" do
      filters = {
        length_of_stay: '',
        check_in: '',
        check_out: '',
        star_rating_from: '',
        star_rating_to: '',
        total_rate_from: '',
        total_rate_to: '',
        guest_rating_from: '',
        guest_rating_to: '',
        destination: ''
      }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([])
    end
  end
end
