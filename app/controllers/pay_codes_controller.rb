class PayCodesController < ApplicationController
  # GET /pay_codes
  # GET /pay_codes.xml
  def index
    @pay_codes = PayCode.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @pay_codes }
    end
  end

  # GET /pay_codes/1
  # GET /pay_codes/1.xml
  def show
    @pay_code = PayCode.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @pay_code }
    end
  end

  # GET /pay_codes/new
  # GET /pay_codes/new.xml
  def new
    @pay_code = PayCode.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @pay_code }
    end
  end

  # GET /pay_codes/1/edit
  def edit
    @pay_code = PayCode.find(params[:id])
  end

  # POST /pay_codes
  # POST /pay_codes.xml
  def create
    @pay_code = PayCode.new(params[:pay_code])

    respond_to do |format|
      if @pay_code.save
        flash[:notice] = 'PayCode was successfully created.'
        format.html { redirect_to(@pay_code) }
        format.xml  { render :xml => @pay_code, :status => :created, :location => @pay_code }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @pay_code.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /pay_codes/1
  # PUT /pay_codes/1.xml
  def update
    @pay_code = PayCode.find(params[:id])

    respond_to do |format|
      if @pay_code.update_attributes(params[:pay_code])
        flash[:notice] = 'PayCode was successfully updated.'
        format.html { redirect_to(@pay_code) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @pay_code.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /pay_codes/1
  # DELETE /pay_codes/1.xml
  def destroy
    @pay_code = PayCode.find(params[:id])
    @pay_code.destroy

    respond_to do |format|
      format.html { redirect_to(pay_codes_url) }
      format.xml  { head :ok }
    end
  end
end
