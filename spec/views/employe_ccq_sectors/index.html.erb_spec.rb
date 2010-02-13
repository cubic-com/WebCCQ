require 'spec_helper'

describe "/employe_ccq_sectors/index.html.erb" do
  include EmployeCcqSectorsHelper

  before(:each) do
    assigns[:employe_ccq_sectors] = [
      stub_model(EmployeCcqSector,
        :sector_name_fr => "value for sector_name_fr",
        :sector_name_en => "value for sector_name_en"
      ),
      stub_model(EmployeCcqSector,
        :sector_name_fr => "value for sector_name_fr",
        :sector_name_en => "value for sector_name_en"
      )
    ]
  end

  it "renders a list of employe_ccq_sectors" do
    render
    response.should have_tag("tr>td", "value for sector_name_fr".to_s, 2)
    response.should have_tag("tr>td", "value for sector_name_en".to_s, 2)
  end
end
