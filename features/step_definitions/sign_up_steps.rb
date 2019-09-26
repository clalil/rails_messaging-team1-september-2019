Given("I visit the landing page") do
    visit root_path
  end

  Given("I visit the signup page") do
    visit new_user_registration_path
  end
  
  Given("the following user exist:") do |table|
    table.hashes.each do |user|
      FactoryBot.create(:user, user)
    end
  end