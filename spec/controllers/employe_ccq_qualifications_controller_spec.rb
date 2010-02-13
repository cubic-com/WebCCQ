require 'spec_helper'

describe EmployeCcqQualificationsController do

  def mock_employe_ccq_qualification(stubs={})
    @mock_employe_ccq_qualification ||= mock_model(EmployeCcqQualification, stubs)
  end

  describe "GET index" do
    it "assigns all employe_ccq_qualifications as @employe_ccq_qualifications" do
      EmployeCcqQualification.stub(:find).with(:all).and_return([mock_employe_ccq_qualification])
      get :index
      assigns[:employe_ccq_qualifications].should == [mock_employe_ccq_qualification]
    end
  end

  describe "GET show" do
    it "assigns the requested employe_ccq_qualification as @employe_ccq_qualification" do
      EmployeCcqQualification.stub(:find).with("37").and_return(mock_employe_ccq_qualification)
      get :show, :id => "37"
      assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
    end
  end

  describe "GET new" do
    it "assigns a new employe_ccq_qualification as @employe_ccq_qualification" do
      EmployeCcqQualification.stub(:new).and_return(mock_employe_ccq_qualification)
      get :new
      assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
    end
  end

  describe "GET edit" do
    it "assigns the requested employe_ccq_qualification as @employe_ccq_qualification" do
      EmployeCcqQualification.stub(:find).with("37").and_return(mock_employe_ccq_qualification)
      get :edit, :id => "37"
      assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employe_ccq_qualification as @employe_ccq_qualification" do
        EmployeCcqQualification.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_qualification(:save => true))
        post :create, :employe_ccq_qualification => {:these => 'params'}
        assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
      end

      it "redirects to the created employe_ccq_qualification" do
        EmployeCcqQualification.stub(:new).and_return(mock_employe_ccq_qualification(:save => true))
        post :create, :employe_ccq_qualification => {}
        response.should redirect_to(employe_ccq_qualification_url(mock_employe_ccq_qualification))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employe_ccq_qualification as @employe_ccq_qualification" do
        EmployeCcqQualification.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_qualification(:save => false))
        post :create, :employe_ccq_qualification => {:these => 'params'}
        assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
      end

      it "re-renders the 'new' template" do
        EmployeCcqQualification.stub(:new).and_return(mock_employe_ccq_qualification(:save => false))
        post :create, :employe_ccq_qualification => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employe_ccq_qualification" do
        EmployeCcqQualification.should_receive(:find).with("37").and_return(mock_employe_ccq_qualification)
        mock_employe_ccq_qualification.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_qualification => {:these => 'params'}
      end

      it "assigns the requested employe_ccq_qualification as @employe_ccq_qualification" do
        EmployeCcqQualification.stub(:find).and_return(mock_employe_ccq_qualification(:update_attributes => true))
        put :update, :id => "1"
        assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
      end

      it "redirects to the employe_ccq_qualification" do
        EmployeCcqQualification.stub(:find).and_return(mock_employe_ccq_qualification(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(employe_ccq_qualification_url(mock_employe_ccq_qualification))
      end
    end

    describe "with invalid params" do
      it "updates the requested employe_ccq_qualification" do
        EmployeCcqQualification.should_receive(:find).with("37").and_return(mock_employe_ccq_qualification)
        mock_employe_ccq_qualification.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_qualification => {:these => 'params'}
      end

      it "assigns the employe_ccq_qualification as @employe_ccq_qualification" do
        EmployeCcqQualification.stub(:find).and_return(mock_employe_ccq_qualification(:update_attributes => false))
        put :update, :id => "1"
        assigns[:employe_ccq_qualification].should equal(mock_employe_ccq_qualification)
      end

      it "re-renders the 'edit' template" do
        EmployeCcqQualification.stub(:find).and_return(mock_employe_ccq_qualification(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employe_ccq_qualification" do
      EmployeCcqQualification.should_receive(:find).with("37").and_return(mock_employe_ccq_qualification)
      mock_employe_ccq_qualification.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employe_ccq_qualifications list" do
      EmployeCcqQualification.stub(:find).and_return(mock_employe_ccq_qualification(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(employe_ccq_qualifications_url)
    end
  end

end
