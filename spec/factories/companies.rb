# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :company do
    name "MyString"
    address "MyString"
    logo "MyString"
    website "MyString"
    facebook_page "MyString"
    linkedin "MyString"
    description "MyText"
    user nil
    country nil
  end
end
