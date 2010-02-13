require 'spec_helper'

describe "/employe_ccq_schedules/index.html.erb" do
  include EmployeCcqSchedulesHelper

  before(:each) do
    assigns[:employe_ccq_schedules] = [
      stub_model(EmployeCcqSchedule,
        :schedule_name_fr => "value for schedule_name_fr",
        :schedule_name_en => "value for schedule_name_en"
      ),
      stub_model(EmployeCcqSchedule,
        :schedule_name_fr => "value for schedule_name_fr",
        :schedule_name_en => "value for schedule_name_en"
      )
    ]
  end

  it "renders a list of employe_ccq_schedules" do
    render
    response.should have_tag("tr>td", "value for schedule_name_fr".to_s, 2)
    response.should have_tag("tr>td", "value for schedule_name_en".to_s, 2)
  end
end
