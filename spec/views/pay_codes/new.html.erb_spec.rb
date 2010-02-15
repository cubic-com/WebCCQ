require 'spec_helper'

describe "/pay_codes/new.html.erb" do
  include PayCodesHelper

  before(:each) do
    assigns[:pay_code] = stub_model(PayCode,
      :new_record? => true,
      :paycode_name => "value for paycode_name",
      :pay_code_dexcription => "value for pay_code_dexcription"
    )
  end

  it "renders new pay_code form" do
    render

    response.should have_tag("form[action=?][method=post]", pay_codes_path) do
      with_tag("input#pay_code_paycode_name[name=?]", "pay_code[paycode_name]")
      with_tag("input#pay_code_pay_code_dexcription[name=?]", "pay_code[pay_code_dexcription]")
    end
  end
end
