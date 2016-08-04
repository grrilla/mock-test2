require './spec_helper'

describe Store do

  before :each do
    @store = FactoryGirl.create :store
    @male_employee = FactoryGirl.build :employee, gender: 'M', store: @store
    @female_employee = FactoryGirl.build :employee, gender: 'F', store: @store
  end

  describe '#female_employees' do
    it "increases by 1 when a female employee is added" do
      @female_employee.save
      @store.reload
      expect(@store.female_employees).to eq(1)
    end
    it "does not increase when a male employee is added" do
      @male_employee.save
      @store.reload
      expect(@store.female_employees).to eq(0)
    end
    it "does not increase when a female employee is UPDATED" do
      @female_employee.save # creates
      @female_employee.first_name = "something else"
      @female_employee.save # updates
      @store.reload
      expect(@store.female_employees).to eq(1)
    end
  end

  describe '#male_employees' do
    it "increases by 1 when a male employee is added" do
      @male_employee.save
      @store.reload
      expect(@store.male_employees).to eq(1)
    end
    it "does not increase when a female employee is added" do
      @female_employee.save
      @store.reload
      expect(@store.male_employees).to eq(0)
    end
    it "does not increase when a male employee is UPDATED" do
      @male_employee.save # creates
      @male_employee.first_name = "someting else"
      @male_employee.save # updates
      @store.reload
      expect(@store.male_employees).to eq(1)
    end
  end

end
