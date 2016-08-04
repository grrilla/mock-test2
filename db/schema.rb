ActiveRecord::Schema.define do
  create_table :stores, force: true do |t|
    t.string     :name
    t.integer    :annual_revenue
    t.integer    :female_employees, default: 0
    t.integer    :male_employees,   default: 0
    t.timestamps
  end
  create_table :employees, force: true do |t|
    t.references :store
    t.string     :first_name
    t.string     :last_name
    t.string     :gender, limit: 1
    t.integer    :hourly_rate
    t.timestamps
  end
end
