Given /^I search for an image with "([^"]*])" and "([^"]*])"$/ do |name, description|
  step "I fill in \"name\" with #{name}"
  step "I fill in \"description\" with #{description}"
end
