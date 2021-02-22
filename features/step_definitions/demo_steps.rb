Given(/^I connect to "([^"]*)"$/) do |application|
  @demo_page.connect_to_web(application)
end

Then(/^I should see "([^"]*)"$/) do |url|
  @demo_page.val_connect_to_web(url)
end