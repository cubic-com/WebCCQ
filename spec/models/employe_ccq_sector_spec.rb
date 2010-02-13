require 'spec_helper'

describe EmployeCcqSector do
  before(:each) do
    @valid_attributes = {
      :sector_name_fr => "value for sector_name_fr",
      :sector_name_en => "value for sector_name_en"
    }
  end

  it "should create a new instance given valid attributes" do
    EmployeCcqSector.create!(@valid_attributes)
  end
end
