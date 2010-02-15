require 'spec_helper'

describe "/pay_codes/show.html.erb" do
  include PayCodesHelper
  before(:each) do
    assigns[:pay_code] = @pay_code = stub_model(PayCode,
      :paycode_name => "value for paycode_name",
      :pay_code_dexcription => "value for pay_code_dexcription"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ paycode_name/)
    response.should have_text(/value\ for\ pay_code_dexcription/)
  end
end
