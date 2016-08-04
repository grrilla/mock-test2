require './spec_helper'

describe Store do

  before :each do
    @store = Store.new
  end

  describe "associations" do

    it "should be able to get their employees" do
      expect { @store.employees }.to_not raise_error
    end

    it "should be able to set their employees" do
      expect { @store.employees.new }.to_not raise_error
    end

  end

end
