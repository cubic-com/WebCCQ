require 'spec_helper'

describe PayCodesController do

  def mock_pay_code(stubs={})
    @mock_pay_code ||= mock_model(PayCode, stubs)
  end

  describe "GET index" do
    it "assigns all pay_codes as @pay_codes" do
      PayCode.stub(:find).with(:all).and_return([mock_pay_code])
      get :index
      assigns[:pay_codes].should == [mock_pay_code]
    end
  end

  describe "GET show" do
    it "assigns the requested pay_code as @pay_code" do
      PayCode.stub(:find).with("37").and_return(mock_pay_code)
      get :show, :id => "37"
      assigns[:pay_code].should equal(mock_pay_code)
    end
  end

  describe "GET new" do
    it "assigns a new pay_code as @pay_code" do
      PayCode.stub(:new).and_return(mock_pay_code)
      get :new
      assigns[:pay_code].should equal(mock_pay_code)
    end
  end

  describe "GET edit" do
    it "assigns the requested pay_code as @pay_code" do
      PayCode.stub(:find).with("37").and_return(mock_pay_code)
      get :edit, :id => "37"
      assigns[:pay_code].should equal(mock_pay_code)
    end
  end

  describe "POST create" do

    describe "with valid params" do
      it "assigns a newly created pay_code as @pay_code" do
        PayCode.stub(:new).with({'these' => 'params'}).and_return(mock_pay_code(:save => true))
        post :create, :pay_code => {:these => 'params'}
        assigns[:pay_code].should equal(mock_pay_code)
      end

      it "redirects to the created pay_code" do
        PayCode.stub(:new).and_return(mock_pay_code(:save => true))
        post :create, :pay_code => {}
        response.should redirect_to(pay_code_url(mock_pay_code))
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved pay_code as @pay_code" do
        PayCode.stub(:new).with({'these' => 'params'}).and_return(mock_pay_code(:save => false))
        post :create, :pay_code => {:these => 'params'}
        assigns[:pay_code].should equal(mock_pay_code)
      end

      it "re-renders the 'new' template" do
        PayCode.stub(:new).and_return(mock_pay_code(:save => false))
        post :create, :pay_code => {}
        response.should render_template('new')
      end
    end

  end

  describe "PUT update" do

    describe "with valid params" do
      it "updates the requested pay_code" do
        PayCode.should_receive(:find).with("37").and_return(mock_pay_code)
        mock_pay_code.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pay_code => {:these => 'params'}
      end

      it "assigns the requested pay_code as @pay_code" do
        PayCode.stub(:find).and_return(mock_pay_code(:update_attributes => true))
        put :update, :id => "1"
        assigns[:pay_code].should equal(mock_pay_code)
      end

      it "redirects to the pay_code" do
        PayCode.stub(:find).and_return(mock_pay_code(:update_attributes => true))
        put :update, :id => "1"
        response.should redirect_to(pay_code_url(mock_pay_code))
      end
    end

    describe "with invalid params" do
      it "updates the requested pay_code" do
        PayCode.should_receive(:find).with("37").and_return(mock_pay_code)
        mock_pay_code.should_receive(:update_attributes).with({'these' => 'params'})
        put :update, :id => "37", :pay_code => {:these => 'params'}
      end

      it "assigns the pay_code as @pay_code" do
        PayCode.stub(:find).and_return(mock_pay_code(:update_attributes => false))
        put :update, :id => "1"
        assigns[:pay_code].should equal(mock_pay_code)
      end

      it "re-renders the 'edit' template" do
        PayCode.stub(:find).and_return(mock_pay_code(:update_attributes => false))
        put :update, :id => "1"
        response.should render_template('edit')
      end
    end

  end

  describe "DELETE destroy" do
    it "destroys the requested pay_code" do
      PayCode.should_receive(:find).with("37").and_return(mock_pay_code)
      mock_pay_code.should_receive(:destroy)
      delete :destroy, :id => "37"
    end

    it "redirects to the pay_codes list" do
      PayCode.stub(:find).and_return(mock_pay_code(:destroy => true))
      delete :destroy, :id => "1"
      response.should redirect_to(pay_codes_url)
    end
  end

end
