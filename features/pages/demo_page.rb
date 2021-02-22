class DemoPage
  include PageObject

  def connect_to_web(application)
    case application
    when 'Google'
      browser.goto('https://www.google.com/')
      browser.driver.manage.window.maximize
    when 'Github'
      browser.goto('https://www.github.com/')
      browser.driver.manage.window.maximize
    else
      puts 'ERROR! no application matches: ' + application.to_s
    end
    sleep 5
  end

  def val_connect_to_web(url)
    browser.url.include?(url).should == true
  end
end