require 'spec_helper'

describe EmployeCcqTrade do
  before(:each) do
    @valid_attributes = {
      :trdeid => 1,
      :tradename_fr => "value for tradename_fr",
      :trade_name_en => "value for trade_name_en"
    }
  end

  it "should create a new instance given valid attributes" do
    EmployeCcqTrade.create!(@valid_attributes)
  end
end
