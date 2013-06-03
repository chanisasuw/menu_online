# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  sequence(:user_name)        {|n| "user_#{n}" }
  factory :user do
    email                 { "#{FactoryGirl.generate(:user_name)}@example.com"                    }
    password              { "11111111"                                }
    password_confirmation { password                                 }
    user true
  end
end
