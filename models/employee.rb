class Employee < ActiveRecord::Base
  belongs_to :store

  validates :first_name,
    presence: true
  validates :last_name,
    presence: true

  after_create :increment_employee
  after_destroy :decrement_employee

  MAX_BILLABLE_HOURS = 1950

  def increment_employee
    if self.gender.downcase == 'm'
      self.store.male_employees += 1
    else self.gender.downcase == 'f'
      self.store.female_employees += 1
    end
    self.store.save
  end

  def decrement_employee
    if self.gender.downcase == 'm'
      self.store.male_employees -= 1
    else self.gender.downcase == 'f'
      self.store.female_employees -= 1
    end
    self.store.save
  end

  def annual_salary
    self.hourly_rate * MAX_BILLABLE_HOURS
  end

  def self.average_hourly_rate_for(gender)
    where_clause = "gender = ?" if gender
    Employee.where(where_clause, gender).average(:hourly_rate).round(2)
  end
end
