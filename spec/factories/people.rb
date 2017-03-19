FactoryGirl.define do
  factory :person do
    name { Faker::Name.name }
    favorite_city { Faker::Address.city }
  end
end