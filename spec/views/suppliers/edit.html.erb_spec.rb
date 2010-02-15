require 'spec_helper'

describe "/suppliers/edit.html.erb" do
  include SuppliersHelper

  before(:each) do
    assigns[:supplier] = @supplier = stub_model(Supplier,
      :new_record? => false,
      :supplier_name => "value for supplier_name"
    )
  end

  it "renders the edit supplier form" do
    render

    response.should have_tag("form[action=#{supplier_path(@supplier)}][method=post]") do
      with_tag('input#supplier_supplier_name[name=?]', "supplier[supplier_name]")
    end
  end
end
