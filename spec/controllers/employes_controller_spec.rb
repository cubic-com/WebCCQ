require 'spec_helper'

describe EmployesController do

  def mock_employe(stubs={})
    @mock_employe ||= mock_model(Employe, stubs)
  end

  describe "GET index" do
    it "assigns all employes as @employes" do
      Employe.stub(:find).with(:all).and_return([mock_employe])
      get :index
      assigns[:employes].should == [mock_employe]
    end
  end

  describe "GET show" do
    it "assigns the requested employe as @employe" do
      Employe.stub(:find).with("37").and_return(mock_employe)
      get :show, :id => "37"
      assigns[:employe].should equal(mock_employe)
    end
  end

  describe "GET new" do
    it "assigns a new employe as @employe" do
      Employe.stub(:new).and_return(mock_employe)
      get :new
      assigns[:employe].should equal(mock_employe)
    end
  end

  describe "GET edit" do
    it "assigns the requested employe as @employe" do
      Employe.stub(:find).with("37").and_return(mock_employe)
      get :edit, :id => "37"
      assigns[:employe].should equal(mock_employe)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employe as @employe" do
        Employe.stub(:new).with({'these' => 'params'}).and_return(mock_employe(:save => true))
        post :create, :employe => {:these => 'params'}
        assigns[:employe].should equal(mock_employe)
      end

      it "redirects to the created employe" do
        Employe.stub(:new).and_return(mock_employe(:save => true))
        post :create, :employe => {}
        response.should redirect_to(employe_url(mock_employe))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employe as @employe" do
        Employe.stub(:new).with({'these' => 'params'}).and_return(mock_employe(:save => false))
        post :create, :employe => {:these => 'params'}
        assigns[:employe].should equal(mock_employe)
      end

      it "re-renders the 'new' template" do
        Employe.stub(:new).and_return(mock_employe(:save => false))
        post :create, :employe => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employe" do
        Employe.should_receive(:find).with("37").and_return(mock_employe)
        mock_employe.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe => {:these => 'params'}
      end

      it "assigns the requested employe as @employe" do
        Employe.stub(:find).and_return(mock_employe(:update_attributes => true))
        put :update, :id => "1"
        assigns[:employe].should equal(mock_employe)
      end

      it "redirects to the employe" do
        Employe.stub(:find).and_return(mock_employe(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(employe_url(mock_employe))
      end
    end

    describe "with invalid params" do
      it "updates the requested employe" do
        Employe.should_receive(:find).with("37").and_return(mock_employe)
        mock_employe.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe => {:these => 'params'}
      end

      it "assigns the employe as @employe" do
        Employe.stub(:find).and_return(mock_employe(:update_attributes => false))
        put :update, :id => "1"
        assigns[:employe].should equal(mock_employe)
      end

      it "re-renders the 'edit' template" do
        Employe.stub(:find).and_return(mock_employe(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employe" do
      Employe.should_receive(:find).with("37").and_return(mock_employe)
      mock_employe.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employes list" do
      Employe.stub(:find).and_return(mock_employe(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(employes_url)
    end
  end

end
