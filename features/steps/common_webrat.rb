# Commonly used webrat steps
# http://github.com/brynary/webrat

When /^I press "(.*)"$/ do |button|
  click_button(button)
end

When /^I follow "(.*)"$/ do |link|
  click_link(link)
end

When /^I fill in "(.*)" with "(.*)"$/ do |field, value|
  fills_in(field, :with => value) 
end

When /^I check "(.*)"$/ do |field|
  checks(field) 
end

When /^I go to (.*)$/ do |page|
  visit case page
  when "the home page"
    "/"
  else
    page
    #raise "Can't find mapping from \"#{page}\" to a path"
  end
end

Then /^I should see "(.*)"$/ do |text|
  response.body.should =~ /#{text}/m
end

Then /^I should not see "(.*)"$/ do |text|
  response.body.should_not =~ /#{text}/m
end
