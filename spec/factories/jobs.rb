# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :job do
    title "MyString"
    vacancies 1
    wage_per_hour 1.5
    description "MyText"
    time_from "2014-02-24 13:53:38"
    time_to "2014-02-24 13:53:38"
    company nil
    publish false
  end
end
