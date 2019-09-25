FactoryBot.define do
    factory :user do 
        name { "Joe" }
        email { "joe@doe.com" }
        password { "12345678" }
        password_confirmation { "12345678" }
    end
end