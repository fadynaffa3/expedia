require 'support/helpers/expedia_helper.rb'

RSpec.configure do |config|
  config.include ExpediaHelper, type: :controller
end
