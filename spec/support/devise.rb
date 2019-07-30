# frozen_string_literal: true

RSpec.configure do |config|
  %i[controller view].each do |type|
    config.include Devise::Test::ControllerHelpers,  type: type
  end

  %i[request system].each do |type|
    config.include Devise::Test::IntegrationHelpers, type: type
  end
end
