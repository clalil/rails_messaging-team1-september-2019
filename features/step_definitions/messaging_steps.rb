And("I send a mail to {string}") do |name|
  @receiver = User.find_by(name: name)
  @user.send_message(@receiver, 'Lorem ipsum...', 'Subject')
end

Given("following messages exists") do |table|
  table.hashes.each do |email|
    sender = User.find_by(name: email[:sender])
    @receiver = User.find_by(name: email[:receiver]) 
    sender.send_message(@receiver, email[:body], email[:subject])  
  end
end

Then("I should see {string} messages") do |expected_count|
  count = @receiver.mailbox.inbox.count
  expect(count).to eq expected_count.to_i
end