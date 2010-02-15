require 'spec_helper'

describe Supplier do
  before(:each) do
    @valid_attributes = {
      :supplier_name => "value for supplier_name"
    }
  end

  it "should create a new instance given valid attributes" do
    Supplier.create!(@valid_attributes)
  end
end
