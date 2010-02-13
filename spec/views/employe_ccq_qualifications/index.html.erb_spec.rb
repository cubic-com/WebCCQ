require 'spec_helper'

describe "/employe_ccq_qualifications/index.html.erb" do
  include EmployeCcqQualificationsHelper

  before(:each) do
    assigns[:employe_ccq_qualifications] = [
      stub_model(EmployeCcqQualification,
        :qualification_name_fr => "value for qualification_name_fr",
        :qualifaction_name_en => "value for qualifaction_name_en"
      ),
      stub_model(EmployeCcqQualification,
        :qualification_name_fr => "value for qualification_name_fr",
        :qualifaction_name_en => "value for qualifaction_name_en"
      )
    ]
  end

  it "renders a list of employe_ccq_qualifications" do
    render
    response.should have_tag("tr>td", "value for qualification_name_fr".to_s, 2)
    response.should have_tag("tr>td", "value for qualifaction_name_en".to_s, 2)
  end
end
