FactoryGirl.define do
  factory :person do |f|
    f.name { Faker::Name.name }
    f.favorite_city { Faker::Address.city }
  end
end