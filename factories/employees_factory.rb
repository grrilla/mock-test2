FactoryGirl.define do
  factory :employee do
    store
    first_name     Faker::Name.first_name
    last_name      Faker::Name.last_name
    hourly_rate    12
    gender         'F'

    factory :senior_male_employee do
      hourly_rate  20
      gender 'M'
    end

    factory :senior_female_employee do
      hourly_rate  22
      gender 'F'
    end

    factory :junior_male_employee do
      hourly_rate  10
      gender 'M'
    end

    factory :junior_female_employee do
      hourly_rate  12
      gender 'F'
    end

  end
end
