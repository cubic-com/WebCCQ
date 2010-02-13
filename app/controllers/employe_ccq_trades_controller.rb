class EmployeCcqTradesController < ApplicationController
  # GET /employe_ccq_trades
  # GET /employe_ccq_trades.xml
  def index
    @search = EmployeCcqTrade.search(params[:search])
    @employe_ccq_trades = @search.all.paginate :page => params[:page], :per_page => 10

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employe_ccq_trades }
    end
  end

  # GET /employe_ccq_trades/1
  # GET /employe_ccq_trades/1.xml
  def show
    @employe_ccq_trade = EmployeCcqTrade.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employe_ccq_trade }
    end
  end

  # GET /employe_ccq_trades/new
  # GET /employe_ccq_trades/new.xml
  def new
    @employe_ccq_trade = EmployeCcqTrade.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employe_ccq_trade }
    end
  end

  # GET /employe_ccq_trades/1/edit
  def edit
    @employe_ccq_trade = EmployeCcqTrade.find(params[:id])
  end

  # POST /employe_ccq_trades
  # POST /employe_ccq_trades.xml
  def create
    @employe_ccq_trade = EmployeCcqTrade.new(params[:employe_ccq_trade])

    respond_to do |format|
      if @employe_ccq_trade.save
        flash[:notice] = 'EmployeCcqTrade was successfully created.'
        format.html { redirect_to(@employe_ccq_trade) }
        format.xml  { render :xml => @employe_ccq_trade, :status => :created, :location => @employe_ccq_trade }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employe_ccq_trade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employe_ccq_trades/1
  # PUT /employe_ccq_trades/1.xml
  def update
    @employe_ccq_trade = EmployeCcqTrade.find(params[:id])

    respond_to do |format|
      if @employe_ccq_trade.update_attributes(params[:employe_ccq_trade])
        flash[:notice] = 'EmployeCcqTrade was successfully updated.'
        format.html { redirect_to(@employe_ccq_trade) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employe_ccq_trade.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_ccq_trades/1
  # DELETE /employe_ccq_trades/1.xml
  def destroy
    @employe_ccq_trade = EmployeCcqTrade.find(params[:id])
    @employe_ccq_trade.destroy

    respond_to do |format|
      format.html { redirect_to(employe_ccq_trades_url) }
      format.xml  { head :ok }
    end
  end
end
