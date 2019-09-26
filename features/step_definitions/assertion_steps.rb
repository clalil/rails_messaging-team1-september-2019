Then("I should see {string}") do |string|
    expect(page).to have_content string
  end

  Then("I should see {string} messages") do |expected_count|
    count = @receiver.mailbox.inbox.count
    expect(count).to eq expected_count.to_i
  end