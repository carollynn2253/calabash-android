require 'calabash-android/calabash_steps'


Then /^I press TextInputLayout number (\d+)$/ do |index|
  tap_when_element_exists("android.support.design.widget.TextInputLayout index:#{index.to_i-1}")
end

Then /^I press ultimate recycler list item number (\d+)$/ do |index|
  tap_when_element_exists("com.marshalchen.ultimaterecyclerview.UltimateRecyclerView index:0 android.widget.TextView index:#{index.to_i-1}")
end

Given /^I set the NumberPicker value to (\d+)$/ do |value|
  query("android.widget.NumberPicker", setValue:Integer(value)-1)
end

Then /^I hide the keyboard$/ do
  hide_soft_keyboard()
  sleep 3
end

Then /^I enter "([^\"]*)" into last input field$/ do |text|
  enter_text("android.widget.EditText index:#{query("android.widget.EditText").count-1}", text)
end
