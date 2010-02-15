require 'spec_helper'

describe "/projects/show.html.erb" do
  include ProjectsHelper
  before(:each) do
    assigns[:project] = @project = stub_model(Project,
      :project_name => "value for project_name",
      :project_dexcription => "value for project_dexcription"
    )
  end

  it "renders attributes in <p>" do
    render
    response.should have_text(/value\ for\ project_name/)
    response.should have_text(/value\ for\ project_dexcription/)
  end
end
