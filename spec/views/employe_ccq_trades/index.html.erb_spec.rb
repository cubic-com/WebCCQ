require 'spec_helper'

describe "/employe_ccq_trades/index.html.erb" do
  include EmployeCcqTradesHelper

  before(:each) do
    assigns[:employe_ccq_trades] = [
      stub_model(EmployeCcqTrade,
        :trdeid => 1,
        :tradename_fr => "value for tradename_fr",
        :trade_name_en => "value for trade_name_en"
      ),
      stub_model(EmployeCcqTrade,
        :trdeid => 1,
        :tradename_fr => "value for tradename_fr",
        :trade_name_en => "value for trade_name_en"
      )
    ]
  end

  it "renders a list of employe_ccq_trades" do
    render
    response.should have_tag("tr>td", 1.to_s, 2)
    response.should have_tag("tr>td", "value for tradename_fr".to_s, 2)
    response.should have_tag("tr>td", "value for trade_name_en".to_s, 2)
  end
end
