require 'rails_helper'

RSpec.describe HotelsController, type: :controller do
  let(:sample_json) { sample_json_response }

  before :each do
    allow_any_instance_of(Expedia).to receive(:search).and_return(sample_json)
  end

  describe 'POST #search' do
    before(:each) do
      post :search
    end

    it { is_expected.to respond_with(:success) }
    it { is_expected.to render_with_layout(:application) }
    it { is_expected.to render_template(:search) }
  end
end
