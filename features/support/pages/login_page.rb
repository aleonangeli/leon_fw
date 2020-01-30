class LoginPage
  include PageObject

  page_url "https://linkedin.com"
  text_field(:txtusername,:name => 'session_key')
  text_field(:txtpassword,:name => "session_password")
  button(:loginbtn,:class => "sign-in-form__submit-btn")

  def login_with(txtusername, txtpassword)
    self.txtusername = txtusername
    self.txtpassword = txtpassword
    loginbtn
  end

end

