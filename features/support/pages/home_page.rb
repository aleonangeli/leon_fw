class HomePage
  include PageObject

  page_url('https://www.linkedin.com/feed/')

  link(:messagesbtn,:xpath =>'//li//a[@href="/messaging/"]')

  def gotomessages
    messagesbtn
  end

end
