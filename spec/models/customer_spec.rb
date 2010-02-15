require 'spec_helper'

describe Customer do
  before(:each) do
    @valid_attributes = {
      :customer_name => "value for customer_name"
    }
  end

  it "should create a new instance given valid attributes" do
    Customer.create!(@valid_attributes)
  end
end
