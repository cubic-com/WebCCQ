require 'spec_helper'

describe "/employe_ccq_trades/edit.html.erb" do
  include EmployeCcqTradesHelper

  before(:each) do
    assigns[:employe_ccq_trade] = @employe_ccq_trade = stub_model(EmployeCcqTrade,
      :new_record? => false,
      :trdeid => 1,
      :tradename_fr => "value for tradename_fr",
      :trade_name_en => "value for trade_name_en"
    )
  end

  it "renders the edit employe_ccq_trade form" do
    render

    response.should have_tag("form[action=#{employe_ccq_trade_path(@employe_ccq_trade)}][method=post]") do
      with_tag('input#employe_ccq_trade_trdeid[name=?]', "employe_ccq_trade[trdeid]")
      with_tag('input#employe_ccq_trade_tradename_fr[name=?]', "employe_ccq_trade[tradename_fr]")
      with_tag('input#employe_ccq_trade_trade_name_en[name=?]', "employe_ccq_trade[trade_name_en]")
    end
  end
end
