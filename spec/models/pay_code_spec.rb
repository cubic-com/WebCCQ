require 'spec_helper'

describe PayCode do
  before(:each) do
    @valid_attributes = {
      :paycode_name => "value for paycode_name",
      :pay_code_dexcription => "value for pay_code_dexcription"
    }
  end

  it "should create a new instance given valid attributes" do
    PayCode.create!(@valid_attributes)
  end
end
