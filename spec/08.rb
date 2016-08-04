require './spec_helper'

describe Store do

  before :each do
    @store = FactoryGirl.build :store
  end

  describe '#annual_profit' do
    it "is calculated on the fly based on annual_revenue and annual_expense" do
      expect(@store).to receive(:annual_revenue).and_return (1_000_000)
      expect(@store).to receive(:annual_expense).and_return (400_000)

      expect(@store.annual_profit).to eq(600_000)
    end
  end

end
