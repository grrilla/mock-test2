require './spec_helper'

describe Store do

  before :each do
    @store = FactoryGirl.create :store
    @male_employee = FactoryGirl.create :employee, gender: 'M', store: @store 
    @female_employee = FactoryGirl.create :employee, gender: 'F', store: @store
  end
  
  describe '#female_employees (database field)' do
    it "decreases by 1 when a female employee is removed" do
      expect(@store.female_employees).to eq(1)
      @female_employee.destroy
      expect(@store.female_employees).to eq(0)
    end
    it "does not decrease when a male employee is removed" do
      expect(@store.female_employees).to eq(1)
      @male_employee.destroy
      expect(@store.female_employees).to eq(1)
    end
  end

  describe '#male_employees (database field)' do
    it "decreases by 1 when a male employee is removed" do
      expect(@store.male_employees).to eq(1)
      @male_employee.destroy
      expect(@store.male_employees).to eq(0)
    end
    it "does not decrease when a female employee is removed" do
      expect(@store.male_employees).to eq(1)
      @female_employee.destroy
      expect(@store.male_employees).to eq(1)
    end
  end

end
