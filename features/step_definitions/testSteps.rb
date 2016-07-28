Given(/^I am setting up cucumber on my computer$/) do
  vist(GoogleHome)
  on(GoogleHome).search_google
end

When(/^I run cucumber in the terminal$/) do
  pending
  #logout_user
end


Then(/^I should navagate to google$/) do
  pending

  #logout_user
end

