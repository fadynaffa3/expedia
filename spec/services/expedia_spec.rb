require 'rails_helper'

describe Expedia do
  describe 'parse filters' do
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
  end
end
