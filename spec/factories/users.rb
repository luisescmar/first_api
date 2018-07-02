FactoryBot.define do
  factory :user do
    name { Faker::Name.name }
    email { 'fake@fake.com' }
    password { 'fakepass' }
  end
end