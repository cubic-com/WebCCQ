require 'spec_helper'

describe "/employe_ccq_schedules/edit.html.erb" do
  include EmployeCcqSchedulesHelper

  before(:each) do
    assigns[:employe_ccq_schedule] = @employe_ccq_schedule = stub_model(EmployeCcqSchedule,
      :new_record? => false,
      :schedule_name_fr => "value for schedule_name_fr",
      :schedule_name_en => "value for schedule_name_en"
    )
  end

  it "renders the edit employe_ccq_schedule form" do
    render

    response.should have_tag("form[action=#{employe_ccq_schedule_path(@employe_ccq_schedule)}][method=post]") do
      with_tag('input#employe_ccq_schedule_schedule_name_fr[name=?]', "employe_ccq_schedule[schedule_name_fr]")
      with_tag('input#employe_ccq_schedule_schedule_name_en[name=?]', "employe_ccq_schedule[schedule_name_en]")
    end
  end
end
