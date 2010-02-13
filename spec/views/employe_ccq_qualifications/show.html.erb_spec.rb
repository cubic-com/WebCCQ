require 'spec_helper'

describe "/employe_ccq_qualifications/show.html.erb" do
  include EmployeCcqQualificationsHelper
  before(:each) do
    assigns[:employe_ccq_qualification] = @employe_ccq_qualification = stub_model(EmployeCcqQualification,
      :qualification_name_fr => "value for qualification_name_fr",
      :qualifaction_name_en => "value for qualifaction_name_en"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ qualification_name_fr/)
    response.should have_text(/value\ for\ qualifaction_name_en/)
  end
end
