# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :user do
    name "exampleuser"
    email "hah@gmail.com"
    password "foobar"
    password_confirmation "foobar"
  end
end
