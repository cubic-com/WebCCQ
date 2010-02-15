require 'spec_helper'

describe "/pay_codes/edit.html.erb" do
  include PayCodesHelper

  before(:each) do
    assigns[:pay_code] = @pay_code = stub_model(PayCode,
      :new_record? => false,
      :paycode_name => "value for paycode_name",
      :pay_code_dexcription => "value for pay_code_dexcription"
    )
  end

  it "renders the edit pay_code form" do
    render

    response.should have_tag("form[action=#{pay_code_path(@pay_code)}][method=post]") do
      with_tag('input#pay_code_paycode_name[name=?]', "pay_code[paycode_name]")
      with_tag('input#pay_code_pay_code_dexcription[name=?]', "pay_code[pay_code_dexcription]")
    end
  end
end
