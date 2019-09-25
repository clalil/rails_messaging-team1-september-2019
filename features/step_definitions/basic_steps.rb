

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
    click_link string
  end

  When("I click on {string}") do |string|
    find_link('Sign up').click
  end
