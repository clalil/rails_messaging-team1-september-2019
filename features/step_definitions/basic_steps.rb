  When("I fill in {string} with {string}") do |field, content|
    fill_in field, with: content
  end

  Given("following users exists") do |table|
    table.hashes.each do |user| 
      User.create(user)
    end
  end
  
  Given("I am on the home page") do
    visit root_path
  end

  When("I click {string}") do |string|
    click_link_or_button string
  end
