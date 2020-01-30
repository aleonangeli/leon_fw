browser = Watir::Browser.new


Given(/^I'm logged into my LinkedIn accound with a valid credentials$/) do
  browser.goto 'https://www.linkedin.com/'
  browser.window.maximize
  user = browser.text_field(name: 'session_key')
  user.click
  user.set 'example@gmail.com'
  password = browser.text_field(name: 'session_password')
  password.send_keys :enter
  password.set 'password'
  login_btn = browser.button(class:'sign-in-form__submit-btn')
  login_btn.click
end

When(/^I go to the messages section$/) do
  browser.link(xpath:'//*[@id="messaging-nav-item"]/a').click
end


And(/^look for certain contact$/) do
  message_search = browser.text_field(name:'searchTerm')
  message_search.click
  message_search.set 'Michael "Fritz" Fritzius'
  message_search.send_keys :enter
  sleep 3
end

Then(/^I'm able to write and send a message successfully$/) do
  message_input = browser.div(role:"textbox")
  message_input.click
  message_input.send_keys('Automated example message')
  sendmsg_btn = browser.button(type:'submit')
  sendmsg_btn.click
end



