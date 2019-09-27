When("an email has been sent to me") do
    expect(ActionMailer::Base.deliveries.count).to eq 1
end
  
Then("the email should include {string}") do |string|
    ActionMailer::Base.deliveries.first.raw_source.include? string
end