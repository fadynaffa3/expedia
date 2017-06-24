require 'rails_helper'

describe Expedia do
  describe 'parse filters' do
    it 'Returns the correct filters' do
      filters = { destination: 'Jordan' }
      subject = Expedia.new(filters)
      expect(subject.parsed_filters).to eq([['destinationName', 'Jordan']])
    end
  end
end
