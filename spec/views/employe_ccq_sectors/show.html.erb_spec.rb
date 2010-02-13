require 'spec_helper'

describe "/employe_ccq_sectors/show.html.erb" do
  include EmployeCcqSectorsHelper
  before(:each) do
    assigns[:employe_ccq_sector] = @employe_ccq_sector = stub_model(EmployeCcqSector,
      :sector_name_fr => "value for sector_name_fr",
      :sector_name_en => "value for sector_name_en"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ sector_name_fr/)
    response.should have_text(/value\ for\ sector_name_en/)
  end
end
