FactoryBot.define do
    factory :user do 
        name { "Joe" }
        email { "joe@doe.com" }
        password { "password" }
        password_confirmation { "password" }
    end
end