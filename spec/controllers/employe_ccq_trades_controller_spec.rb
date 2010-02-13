require 'spec_helper'

describe EmployeCcqTradesController do

  def mock_employe_ccq_trade(stubs={})
    @mock_employe_ccq_trade ||= mock_model(EmployeCcqTrade, stubs)
  end

  describe "GET index" do
    it "assigns all employe_ccq_trades as @employe_ccq_trades" do
      EmployeCcqTrade.stub(:find).with(:all).and_return([mock_employe_ccq_trade])
      get :index
      assigns[:employe_ccq_trades].should == [mock_employe_ccq_trade]
    end
  end

  describe "GET show" do
    it "assigns the requested employe_ccq_trade as @employe_ccq_trade" do
      EmployeCcqTrade.stub(:find).with("37").and_return(mock_employe_ccq_trade)
      get :show, :id => "37"
      assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
    end
  end

  describe "GET new" do
    it "assigns a new employe_ccq_trade as @employe_ccq_trade" do
      EmployeCcqTrade.stub(:new).and_return(mock_employe_ccq_trade)
      get :new
      assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
    end
  end

  describe "GET edit" do
    it "assigns the requested employe_ccq_trade as @employe_ccq_trade" do
      EmployeCcqTrade.stub(:find).with("37").and_return(mock_employe_ccq_trade)
      get :edit, :id => "37"
      assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created employe_ccq_trade as @employe_ccq_trade" do
        EmployeCcqTrade.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_trade(:save => true))
        post :create, :employe_ccq_trade => {:these => 'params'}
        assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
      end

      it "redirects to the created employe_ccq_trade" do
        EmployeCcqTrade.stub(:new).and_return(mock_employe_ccq_trade(:save => true))
        post :create, :employe_ccq_trade => {}
        response.should redirect_to(employe_ccq_trade_url(mock_employe_ccq_trade))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved employe_ccq_trade as @employe_ccq_trade" do
        EmployeCcqTrade.stub(:new).with({'these' => 'params'}).and_return(mock_employe_ccq_trade(:save => false))
        post :create, :employe_ccq_trade => {:these => 'params'}
        assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
      end

      it "re-renders the 'new' template" do
        EmployeCcqTrade.stub(:new).and_return(mock_employe_ccq_trade(:save => false))
        post :create, :employe_ccq_trade => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested employe_ccq_trade" do
        EmployeCcqTrade.should_receive(:find).with("37").and_return(mock_employe_ccq_trade)
        mock_employe_ccq_trade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_trade => {:these => 'params'}
      end

      it "assigns the requested employe_ccq_trade as @employe_ccq_trade" do
        EmployeCcqTrade.stub(:find).and_return(mock_employe_ccq_trade(:update_attributes => true))
        put :update, :id => "1"
        assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
      end

      it "redirects to the employe_ccq_trade" do
        EmployeCcqTrade.stub(:find).and_return(mock_employe_ccq_trade(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(employe_ccq_trade_url(mock_employe_ccq_trade))
      end
    end

    describe "with invalid params" do
      it "updates the requested employe_ccq_trade" do
        EmployeCcqTrade.should_receive(:find).with("37").and_return(mock_employe_ccq_trade)
        mock_employe_ccq_trade.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :employe_ccq_trade => {:these => 'params'}
      end

      it "assigns the employe_ccq_trade as @employe_ccq_trade" do
        EmployeCcqTrade.stub(:find).and_return(mock_employe_ccq_trade(:update_attributes => false))
        put :update, :id => "1"
        assigns[:employe_ccq_trade].should equal(mock_employe_ccq_trade)
      end

      it "re-renders the 'edit' template" do
        EmployeCcqTrade.stub(:find).and_return(mock_employe_ccq_trade(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested employe_ccq_trade" do
      EmployeCcqTrade.should_receive(:find).with("37").and_return(mock_employe_ccq_trade)
      mock_employe_ccq_trade.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the employe_ccq_trades list" do
      EmployeCcqTrade.stub(:find).and_return(mock_employe_ccq_trade(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(employe_ccq_trades_url)
    end
  end

end
