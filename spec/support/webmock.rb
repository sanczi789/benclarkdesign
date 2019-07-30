# frozen_string_literal: true

require 'webmock/rspec'
WebMock.disable_net_connect! allow_localhost: true

# RSpec.configure do |c|
#   c.before do
#     stub_request :get, 'http://api.test/foo'
#   end
# end
