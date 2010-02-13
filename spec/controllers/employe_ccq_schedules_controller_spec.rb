require 'spec_helper'

describe EmployeCcqSchedulesController do

  def mock_employe_ccq_schedule(stubs={})
    @mock_employe_ccq_schedule ||= mock_model(EmployeCcqSchedule, stubs)
  end

  describe "GET index" do
    it "assigns all employe_ccq_schedules as @employe_ccq_schedules" do
      EmployeCcqSchedule.stub(:find).with(:all).and_return([mock_employe_ccq_schedule])
      get :index
      assigns[:employe_ccq_schedules].should == [mock_employe_ccq_schedule]
    end
  end

  describe "GET show" do
    it "assigns the requested employe_ccq_schedule as @employe_ccq_schedule" do
      EmployeCcqSchedule.stub(:find).with("37").and_return(mock_employe_ccq_schedule)
      get :show, :id => "37"
      assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
    end
  end

  describe "GET new" do
    it "assigns a new employe_ccq_schedule as @employe_ccq_schedule" do
      EmployeCcqSchedule.stub(:new).and_return(mock_employe_ccq_schedule)
      get :new
      assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
    end
  end

  describe "GET edit" do
    it "assigns the requested employe_ccq_schedule as @employe_ccq_schedule" do
      EmployeCcqSchedule.stub(:find).with("37").and_return(mock_employe_ccq_schedule)
      get :edit, :id => "37"
      assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employe_ccq_schedule as @employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_schedule(:save => true))
        post :create, :employe_ccq_schedule => {:these => 'params'}
        assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
      end

      it "redirects to the created employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:new).and_return(mock_employe_ccq_schedule(:save => true))
        post :create, :employe_ccq_schedule => {}
        response.should redirect_to(employe_ccq_schedule_url(mock_employe_ccq_schedule))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employe_ccq_schedule as @employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_schedule(:save => false))
        post :create, :employe_ccq_schedule => {:these => 'params'}
        assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
      end

      it "re-renders the 'new' template" do
        EmployeCcqSchedule.stub(:new).and_return(mock_employe_ccq_schedule(:save => false))
        post :create, :employe_ccq_schedule => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employe_ccq_schedule" do
        EmployeCcqSchedule.should_receive(:find).with("37").and_return(mock_employe_ccq_schedule)
        mock_employe_ccq_schedule.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_schedule => {:these => 'params'}
      end

      it "assigns the requested employe_ccq_schedule as @employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:find).and_return(mock_employe_ccq_schedule(:update_attributes => true))
        put :update, :id => "1"
        assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
      end

      it "redirects to the employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:find).and_return(mock_employe_ccq_schedule(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(employe_ccq_schedule_url(mock_employe_ccq_schedule))
      end
    end

    describe "with invalid params" do
      it "updates the requested employe_ccq_schedule" do
        EmployeCcqSchedule.should_receive(:find).with("37").and_return(mock_employe_ccq_schedule)
        mock_employe_ccq_schedule.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_schedule => {:these => 'params'}
      end

      it "assigns the employe_ccq_schedule as @employe_ccq_schedule" do
        EmployeCcqSchedule.stub(:find).and_return(mock_employe_ccq_schedule(:update_attributes => false))
        put :update, :id => "1"
        assigns[:employe_ccq_schedule].should equal(mock_employe_ccq_schedule)
      end

      it "re-renders the 'edit' template" do
        EmployeCcqSchedule.stub(:find).and_return(mock_employe_ccq_schedule(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employe_ccq_schedule" do
      EmployeCcqSchedule.should_receive(:find).with("37").and_return(mock_employe_ccq_schedule)
      mock_employe_ccq_schedule.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employe_ccq_schedules list" do
      EmployeCcqSchedule.stub(:find).and_return(mock_employe_ccq_schedule(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(employe_ccq_schedules_url)
    end
  end

end
