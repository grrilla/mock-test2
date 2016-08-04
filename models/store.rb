class Store < ActiveRecord::Base
  has_many :employees

  validates :name,
    presence: true,
    length: { maximum: 25 }
  validates :annual_revenue,
    numericality: { greater_than_or_equal_to: 0 }
  validates :male_employees,
    numericality: { greater_than_or_equal_to: 0 }
  validates :female_employees,
    numericality: { greater_than_or_equal_to: 0 }

  def annual_expense
    # The purely SQL way: (Fast, unreadable)
    # Store.joins(:employees)
    #   .where("store_id = ?", self.id)
    #   .select("sum(hourly_rate * #{Employee::MAX_BILLABLE_HOURS}) as total")
    #   .first.total

    # The purely Ruby way: (Slow, readable)
    # self.employees.inject(0) { |sum, employee| sum += employee.annual_salary }

    # The best way:
    self.employees.sum(:hourly_rate) * Employee::MAX_BILLABLE_HOURS
  end

  def annual_profit
    self.annual_revenue - self.annual_expense
  end
end
