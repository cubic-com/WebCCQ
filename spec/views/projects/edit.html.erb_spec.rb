require 'spec_helper'

describe "/projects/edit.html.erb" do
  include ProjectsHelper

  before(:each) do
    assigns[:project] = @project = stub_model(Project,
      :new_record? => false,
      :project_name => "value for project_name",
      :project_dexcription => "value for project_dexcription"
    )
  end

  it "renders the edit project form" do
    render

    response.should have_tag("form[action=#{project_path(@project)}][method=post]") do
      with_tag('input#project_project_name[name=?]', "project[project_name]")
      with_tag('input#project_project_dexcription[name=?]', "project[project_dexcription]")
    end
  end
end
