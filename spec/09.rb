require './spec_helper'

describe Employee do

  before :each do
    @male91 = FactoryGirl.create :senior_male_employee # rate = 20
    @male92 = FactoryGirl.create :junior_male_employee # rate = 10
    @male93 = FactoryGirl.create :junior_male_employee # rate = 10
    
    @female91 = FactoryGirl.create :junior_female_employee # rate = 12
    @female92 = FactoryGirl.create :senior_female_employee # rate = 22
  end

  describe '.average_hourly_rate_for(gender)' do
    it "calculates average hourly rate for Male" do
      expect(Employee.average_hourly_rate_for('M').to_f).to eq(13.33)
    end
    it "calculates average hourly rate for Female" do
      expect(Employee.average_hourly_rate_for('F').to_f).to eq(17)
    end
    it "calculates average hourly rate for both Male and Female if nil is passed in (5% BONUS)" do
      expect(Employee.average_hourly_rate_for(nil).to_f).to eq(14.8)
    end
  end

end
