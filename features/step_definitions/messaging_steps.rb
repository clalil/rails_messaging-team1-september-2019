When("I am on the inbox page") do
    visit mailbox_inbox_path
  end
    
  Then("I should see {string}") do |content|
    expect(page).to have_content content
  end
  
  Given("I am logged in as {string}") do |name|
    @user = User.find_by(name: name)
    login_as(@user, scope: :user)
  end
  
  And("I send a mail to {string}") do |name|
    @receiver = User.find_by(name: name)
    @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
  end
   
  Given /^I log out$/ do
    logout
  end
  
  Given("following users exists") do |table|
    table.hashes.each do |user| 
      User.create(user)
    end
  end
  
  Then("I click on alert message") do
    alert = page.driver.browser.switch_to.alert.accept
  end
  
  Given("following messages exists") do |table|
    table.hashes.each do |email|
      sender = User.find_by(name: email[:sender])
      @receiver = User.find_by(name: email[:receiver]) 
      sender.send_message(@receiver, email[:body], email[:subject])  
    end
  end
  
  Given("I click on the {string} link") do |string|
    click_link_or_button string
  end
  
  Given("I am on the home page") do
    visit root_path
  end
  
  Then("I should see {string} messages") do |expected_count|
    count = @receiver.mailbox.inbox.count
    expect(count).to eq expected_count.to_i
  end