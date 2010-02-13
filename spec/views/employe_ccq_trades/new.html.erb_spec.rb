require 'spec_helper'

describe "/employe_ccq_trades/new.html.erb" do
  include EmployeCcqTradesHelper

  before(:each) do
    assigns[:employe_ccq_trade] = stub_model(EmployeCcqTrade,
      :new_record? => true,
      :trdeid => 1,
      :tradename_fr => "value for tradename_fr",
      :trade_name_en => "value for trade_name_en"
    )
  end

  it "renders new employe_ccq_trade form" do
    render

    response.should have_tag("form[action=?][method=post]", employe_ccq_trades_path) do
      with_tag("input#employe_ccq_trade_trdeid[name=?]", "employe_ccq_trade[trdeid]")
      with_tag("input#employe_ccq_trade_tradename_fr[name=?]", "employe_ccq_trade[tradename_fr]")
      with_tag("input#employe_ccq_trade_trade_name_en[name=?]", "employe_ccq_trade[trade_name_en]")
    end
  end
end
