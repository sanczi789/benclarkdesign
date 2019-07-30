# frozen_string_literal: true

Capybara.server = :puma, { Silent: true }

chrome_flags = %w[
  no-sandbox disable-gpu disable-dev-shm-usage window-size=1240,1400
]
chrome_flags << "lang=#{I18n.locale}"
chrome_visible = ENV['CHROME_HEADLESS']&.match?(/^(false|no|0)$/i)
chrome_flags << 'headless' unless chrome_visible

options = Selenium::WebDriver::Chrome::Options.new(args: chrome_flags)

capabilities = Selenium::WebDriver::Remote::Capabilities.chrome(
  chromeOptions: { args: chrome_flags }
)

Capybara.register_driver :chrome do |app|
  browser = ENV['CI'] ? :remote : :chrome
  url = ENV['CI'] ? 'http://selenium:4444/wd/hub' : nil

  Capybara::Selenium::Driver.new(
    app,
    browser: browser,
    options: options,
    desired_capabilities: capabilities,
    url: url
  )
end
