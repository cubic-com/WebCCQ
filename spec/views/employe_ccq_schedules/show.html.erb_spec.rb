require 'spec_helper'

describe "/employe_ccq_schedules/show.html.erb" do
  include EmployeCcqSchedulesHelper
  before(:each) do
    assigns[:employe_ccq_schedule] = @employe_ccq_schedule = stub_model(EmployeCcqSchedule,
      :schedule_name_fr => "value for schedule_name_fr",
      :schedule_name_en => "value for schedule_name_en"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ schedule_name_fr/)
    response.should have_text(/value\ for\ schedule_name_en/)
  end
end
