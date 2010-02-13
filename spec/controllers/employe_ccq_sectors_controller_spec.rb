require 'spec_helper'

describe EmployeCcqSectorsController do

  def mock_employe_ccq_sector(stubs={})
    @mock_employe_ccq_sector ||= mock_model(EmployeCcqSector, stubs)
  end

  describe "GET index" do
    it "assigns all employe_ccq_sectors as @employe_ccq_sectors" do
      EmployeCcqSector.stub(:find).with(:all).and_return([mock_employe_ccq_sector])
      get :index
      assigns[:employe_ccq_sectors].should == [mock_employe_ccq_sector]
    end
  end

  describe "GET show" do
    it "assigns the requested employe_ccq_sector as @employe_ccq_sector" do
      EmployeCcqSector.stub(:find).with("37").and_return(mock_employe_ccq_sector)
      get :show, :id => "37"
      assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
    end
  end

  describe "GET new" do
    it "assigns a new employe_ccq_sector as @employe_ccq_sector" do
      EmployeCcqSector.stub(:new).and_return(mock_employe_ccq_sector)
      get :new
      assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
    end
  end

  describe "GET edit" do
    it "assigns the requested employe_ccq_sector as @employe_ccq_sector" do
      EmployeCcqSector.stub(:find).with("37").and_return(mock_employe_ccq_sector)
      get :edit, :id => "37"
      assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employe_ccq_sector as @employe_ccq_sector" do
        EmployeCcqSector.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_sector(:save => true))
        post :create, :employe_ccq_sector => {:these => 'params'}
        assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
      end

      it "redirects to the created employe_ccq_sector" do
        EmployeCcqSector.stub(:new).and_return(mock_employe_ccq_sector(:save => true))
        post :create, :employe_ccq_sector => {}
        response.should redirect_to(employe_ccq_sector_url(mock_employe_ccq_sector))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employe_ccq_sector as @employe_ccq_sector" do
        EmployeCcqSector.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_sector(:save => false))
        post :create, :employe_ccq_sector => {:these => 'params'}
        assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
      end

      it "re-renders the 'new' template" do
        EmployeCcqSector.stub(:new).and_return(mock_employe_ccq_sector(:save => false))
        post :create, :employe_ccq_sector => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employe_ccq_sector" do
        EmployeCcqSector.should_receive(:find).with("37").and_return(mock_employe_ccq_sector)
        mock_employe_ccq_sector.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_sector => {:these => 'params'}
      end

      it "assigns the requested employe_ccq_sector as @employe_ccq_sector" do
        EmployeCcqSector.stub(:find).and_return(mock_employe_ccq_sector(:update_attributes => true))
        put :update, :id => "1"
        assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
      end

      it "redirects to the employe_ccq_sector" do
        EmployeCcqSector.stub(:find).and_return(mock_employe_ccq_sector(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(employe_ccq_sector_url(mock_employe_ccq_sector))
      end
    end

    describe "with invalid params" do
      it "updates the requested employe_ccq_sector" do
        EmployeCcqSector.should_receive(:find).with("37").and_return(mock_employe_ccq_sector)
        mock_employe_ccq_sector.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_sector => {:these => 'params'}
      end

      it "assigns the employe_ccq_sector as @employe_ccq_sector" do
        EmployeCcqSector.stub(:find).and_return(mock_employe_ccq_sector(:update_attributes => false))
        put :update, :id => "1"
        assigns[:employe_ccq_sector].should equal(mock_employe_ccq_sector)
      end

      it "re-renders the 'edit' template" do
        EmployeCcqSector.stub(:find).and_return(mock_employe_ccq_sector(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employe_ccq_sector" do
      EmployeCcqSector.should_receive(:find).with("37").and_return(mock_employe_ccq_sector)
      mock_employe_ccq_sector.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employe_ccq_sectors list" do
      EmployeCcqSector.stub(:find).and_return(mock_employe_ccq_sector(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(employe_ccq_sectors_url)
    end
  end

end
