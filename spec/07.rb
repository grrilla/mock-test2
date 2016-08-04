require './spec_helper'

describe Employee do

  before :each do
    @senior_employee = FactoryGirl.build :employee, hourly_rate: 50
    @junior_employee = FactoryGirl.build :employee, hourly_rate: 25
  end
  
  describe '#annual_salary' do
    it "is calculated on the fly based on hourly_wage x 1950 (max billable hours in a year)" do
      expect(@senior_employee.annual_salary).to eq(97_500)
      expect(@junior_employee.annual_salary).to eq(48_750)
    end
  end

end

describe Store do

  before :each do
    @store = FactoryGirl.create :store
    @senior_employee = FactoryGirl.create :employee, hourly_rate: 50, store: @store
    @junior_employee = FactoryGirl.create :employee, hourly_rate: 25, store: @store
  end

  describe '#annual_expense' do
    it "is calculated on the fly based on employee annual salaries" do
      expect(@store.annual_expense).to eq(146_250)
    end
  end

end
