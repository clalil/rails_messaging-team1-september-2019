FactoryBot.define do
    factory :user do 
        name { "Joe" }
        email { "joe@doe.com" }
        encrypted_password { "12345678" }
    end
end