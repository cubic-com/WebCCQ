require 'spec_helper'

describe "/employe_ccq_qualifications/edit.html.erb" do
  include EmployeCcqQualificationsHelper

  before(:each) do
    assigns[:employe_ccq_qualification] = @employe_ccq_qualification = stub_model(EmployeCcqQualification,
      :new_record? => false,
      :qualification_name_fr => "value for qualification_name_fr",
      :qualifaction_name_en => "value for qualifaction_name_en"
    )
  end

  it "renders the edit employe_ccq_qualification form" do
    render

    response.should have_tag("form[action=#{employe_ccq_qualification_path(@employe_ccq_qualification)}][method=post]") do
      with_tag('input#employe_ccq_qualification_qualification_name_fr[name=?]', "employe_ccq_qualification[qualification_name_fr]")
      with_tag('input#employe_ccq_qualification_qualifaction_name_en[name=?]', "employe_ccq_qualification[qualifaction_name_en]")
    end
  end
end
