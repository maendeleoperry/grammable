FactoryBot.define do
  factory :comment do
    
  end
    factory :user do
        sequence :email do |n|
           { "dummyemail#{n}@gmail.com" }
        end
        password { "secretPassword" }
        password_confirmation { "secretPassword" }
    end

    factory :gram do
        message { "hello" }
        picture { fixture_file_upload(Rails.root.join('spec', 'fixtures', 'picture.png').to_s, 'image/png') }
        association :user # calls the user factory
    end
end
