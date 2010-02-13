require 'spec_helper'

describe EmployeCcqSchedule do
  before(:each) do
    @valid_attributes = {
      :schedule_name_fr => "value for schedule_name_fr",
      :schedule_name_en => "value for schedule_name_en"
    }
  end

  it "should create a new instance given valid attributes" do
    EmployeCcqSchedule.create!(@valid_attributes)
  end
end
