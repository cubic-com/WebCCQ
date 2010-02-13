require 'spec_helper'

describe "/employe_ccq_trades/show.html.erb" do
  include EmployeCcqTradesHelper
  before(:each) do
    assigns[:employe_ccq_trade] = @employe_ccq_trade = stub_model(EmployeCcqTrade,
      :trdeid => 1,
      :tradename_fr => "value for tradename_fr",
      :trade_name_en => "value for trade_name_en"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/1/)
    response.should have_text(/value\ for\ tradename_fr/)
    response.should have_text(/value\ for\ trade_name_en/)
  end
end
