Before do
  browser = ''
  case ENV['BROWSER'] #case statement to use different browser definitions
  when 'chrome'
    browser = Watir::Browser.new :chrome

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