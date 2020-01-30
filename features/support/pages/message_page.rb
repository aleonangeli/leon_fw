class MessagePage
  include PageObject

  page_url 'https://www.linkedin.com/messaging/'
  text_field(:searchcontact, name: 'searchTerm')
  button(:btnsend,:type => 'submit')
  text_field(:msg,:role => 'textbox')

  def searchcontact contact
    self.searchcontact = contact
    wait 5
  end

  def write message
    self.msg = message
  end

  def sendmessage
    btnsend
  end

end

