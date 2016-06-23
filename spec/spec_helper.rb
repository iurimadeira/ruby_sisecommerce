require 'sisecommerce'

RSpec.configure do |config|
  config.order = "random"
  config.filter_run focus: true
  config.run_all_when_everything_filtered = true

  config.before(:each) do
    allow(Sisecommerce).to receive(:api_token).and_return('4f2c7f5dfa6a81db54a7a0c46b2e8599')
    allow(Sisecommerce).to receive(:store_name).and_return('test')
  end
end
