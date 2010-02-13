require 'spec_helper'

describe "/employe_ccq_sectors/new.html.erb" do
  include EmployeCcqSectorsHelper

  before(:each) do
    assigns[:employe_ccq_sector] = stub_model(EmployeCcqSector,
      :new_record? => true,
      :sector_name_fr => "value for sector_name_fr",
      :sector_name_en => "value for sector_name_en"
    )
  end

  it "renders new employe_ccq_sector form" do
    render

    response.should have_tag("form[action=?][method=post]", employe_ccq_sectors_path) do
      with_tag("input#employe_ccq_sector_sector_name_fr[name=?]", "employe_ccq_sector[sector_name_fr]")
      with_tag("input#employe_ccq_sector_sector_name_en[name=?]", "employe_ccq_sector[sector_name_en]")
    end
  end
end
