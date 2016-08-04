require './spec_helper'

describe Employee do

  before :each do
    @employee = FactoryGirl.build :employee
  end

  describe '#first_name' do
    it "is required" do
      @employee.first_name = nil
      expect(@employee).to_not be_valid
      expect(@employee.errors[:first_name]).to eq(["can't be blank"])
    end
  end

  describe '#last_name' do
    it "is required" do
      @employee.last_name = nil
      expect(@employee).to_not be_valid
      expect(@employee.errors[:last_name]).to eq(["can't be blank"])
    end
  end


end
