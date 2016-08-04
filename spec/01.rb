require './spec_helper'

describe Employee do

  before :each do
    @employee = Employee.new
    @store = Store.new
  end

  describe "associations" do

    it "should be able to get their store" do
      expect { @employee.store }.to_not raise_error
    end

    it "should be able to set their store" do
      expect { @employee.store = @store }.to_not raise_error
    end

  end

end
