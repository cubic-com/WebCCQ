require 'spec_helper'

describe EmployeCcqQualification do
  before(:each) do
    @valid_attributes = {
      :qualification_name_fr => "value for qualification_name_fr",
      :qualifaction_name_en => "value for qualifaction_name_en"
    }
  end

  it "should create a new instance given valid attributes" do
    EmployeCcqQualification.create!(@valid_attributes)
  end
end
