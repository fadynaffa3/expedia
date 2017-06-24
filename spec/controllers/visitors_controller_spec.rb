require 'rails_helper'

RSpec.describe VisitorsController, type: :controller do
  describe 'GET #index' do
    before(:each) do
      get :index
    end

    it { is_expected.to respond_with(:success) }
    it { is_expected.to render_with_layout(:application) }
    it { is_expected.to render_template(:index) }
  end
end
