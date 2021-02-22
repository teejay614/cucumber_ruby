Before do
  browser = ''
  case ENV['BROWSER'] #case statement to use different browser definitions
  when 'chrome'
    chrome_path = File.join(File.dirname(__FILE__), '../../browsers/chromedriver2.41.exe')
    Selenium::WebDriver::Chrome.driver_path = chrome_path
    browser = Watir::Browser.new :chrome, :unexpectedAlertBehaviour => "accept"

  else
    puts 'Application error! Wrong Browser Environment configuration'
  end
  #initiates all page objects
  @browser = browser
  @demo_page = DemoPage.new(@browser)

end
After do # after every scenario the driver quits
  @browser.driver.quit
end