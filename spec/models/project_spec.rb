require 'spec_helper'

describe Project do
  before(:each) do
    @valid_attributes = {
      :project_name => "value for project_name",
      :project_dexcription => "value for project_dexcription"
    }
  end

  it "should create a new instance given valid attributes" do
    Project.create!(@valid_attributes)
  end
end
