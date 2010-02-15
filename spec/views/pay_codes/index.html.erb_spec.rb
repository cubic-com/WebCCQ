require 'spec_helper'

describe "/pay_codes/index.html.erb" do
  include PayCodesHelper

  before(:each) do
    assigns[:pay_codes] = [
      stub_model(PayCode,
        :paycode_name => "value for paycode_name",
        :pay_code_dexcription => "value for pay_code_dexcription"
      ),
      stub_model(PayCode,
        :paycode_name => "value for paycode_name",
        :pay_code_dexcription => "value for pay_code_dexcription"
      )
    ]
  end

  it "renders a list of pay_codes" do
    render
    response.should have_tag("tr>td", "value for paycode_name".to_s, 2)
    response.should have_tag("tr>td", "value for pay_code_dexcription".to_s, 2)
  end
end
