require 'spec_helper'

describe "/employe_ccq_schedules/new.html.erb" do
  include EmployeCcqSchedulesHelper

  before(:each) do
    assigns[:employe_ccq_schedule] = stub_model(EmployeCcqSchedule,
      :new_record? => true,
      :schedule_name_fr => "value for schedule_name_fr",
      :schedule_name_en => "value for schedule_name_en"
    )
  end

  it "renders new employe_ccq_schedule form" do
    render

    response.should have_tag("form[action=?][method=post]", employe_ccq_schedules_path) do
      with_tag("input#employe_ccq_schedule_schedule_name_fr[name=?]", "employe_ccq_schedule[schedule_name_fr]")
      with_tag("input#employe_ccq_schedule_schedule_name_en[name=?]", "employe_ccq_schedule[schedule_name_en]")
    end
  end
end
