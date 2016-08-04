require './spec_helper'

describe Store do

  before :each do
    @store = FactoryGirl.build :store
  end

  describe '#name' do
    it "is required" do
      @store.name = nil
      expect(@store).to_not be_valid
      expect(@store.errors[:name]).to eq(["can't be blank"])
    end
    it "cant be longer than 25 letters" do
      @store.name = 'a' * 26
      expect(@store).to_not be_valid
      expect(@store.errors[:name]).to eq(["is too long (maximum is 25 characters)"])
    end
  end

  describe '#annual_revenue' do
    it "cannot be negative (that would be weird!)" do
      @store.annual_revenue = -100
      expect(@store).to_not be_valid
      expect(@store.errors[:annual_revenue].size).to eq(1)
    end

    it "could be zero (that would be sad)" do
      @store.annual_revenue = 0
      expect(@store).to be_valid
    end

    it "must be a number (integer) only" do
      @store.annual_revenue = 'abc'
      expect(@store).to_not be_valid
      expect(@store.errors[:annual_revenue]).to eq(["is not a number"])
    end
  end

  describe '#male_employees' do
    it "cannot be negative (that would be weird!)" do
      @store.male_employees = -100
      expect(@store).to_not be_valid
      expect(@store.errors[:male_employees].size).to eq(1)
    end

    it "could be zero (that would be sad)" do
      @store.male_employees = 0
      expect(@store).to be_valid
    end

    it "must be a number (integer) only" do
      @store.male_employees = 'abc'
      expect(@store).to_not be_valid
      expect(@store.errors[:male_employees]).to eq(["is not a number"])
    end
  end

  describe '#female_employees' do
    it "cannot be negative (that would be weird!)" do
      @store.female_employees = -100
      expect(@store).to_not be_valid
      expect(@store.errors[:female_employees].size).to eq(1)
    end

    it "could be zero (that would be sad)" do
      @store.female_employees = 0
      expect(@store).to be_valid
    end

    it "must be a number (integer) only" do
      @store.female_employees = 'abc'
      expect(@store).to_not be_valid
      expect(@store.errors[:female_employees]).to eq(["is not a number"])
    end
  end

end
