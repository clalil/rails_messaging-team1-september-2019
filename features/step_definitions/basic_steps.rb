Given("I am logged in as {string}") do |name|
  @user = User.find_by(name: name)
  login_as(@user, scope: :user)
end

When("I fill in {string} with {string}") do |field, content|
  fill_in field, with: content
end

Given("following users exists") do |table|
  table.hashes.each do |user| 
    FactoryBot.create(:user, user)
  end
end

Given("I am on the home page") do
  visit root_path
end

When("I click {string}") do |element|
  click_on element
end