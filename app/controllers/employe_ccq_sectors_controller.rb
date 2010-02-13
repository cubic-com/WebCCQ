class EmployeCcqSectorsController < ApplicationController
  # GET /employe_ccq_sectors
  # GET /employe_ccq_sectors.xml
  def index
    @employe_ccq_sectors = EmployeCcqSector.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employe_ccq_sectors }
    end
  end

  # GET /employe_ccq_sectors/1
  # GET /employe_ccq_sectors/1.xml
  def show
    @employe_ccq_sector = EmployeCcqSector.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employe_ccq_sector }
    end
  end

  # GET /employe_ccq_sectors/new
  # GET /employe_ccq_sectors/new.xml
  def new
    @employe_ccq_sector = EmployeCcqSector.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employe_ccq_sector }
    end
  end

  # GET /employe_ccq_sectors/1/edit
  def edit
    @employe_ccq_sector = EmployeCcqSector.find(params[:id])
  end

  # POST /employe_ccq_sectors
  # POST /employe_ccq_sectors.xml
  def create
    @employe_ccq_sector = EmployeCcqSector.new(params[:employe_ccq_sector])

    respond_to do |format|
      if @employe_ccq_sector.save
        flash[:notice] = 'EmployeCcqSector was successfully created.'
        format.html { redirect_to(@employe_ccq_sector) }
        format.xml  { render :xml => @employe_ccq_sector, :status => :created, :location => @employe_ccq_sector }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employe_ccq_sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employe_ccq_sectors/1
  # PUT /employe_ccq_sectors/1.xml
  def update
    @employe_ccq_sector = EmployeCcqSector.find(params[:id])

    respond_to do |format|
      if @employe_ccq_sector.update_attributes(params[:employe_ccq_sector])
        flash[:notice] = 'EmployeCcqSector was successfully updated.'
        format.html { redirect_to(@employe_ccq_sector) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employe_ccq_sector.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_ccq_sectors/1
  # DELETE /employe_ccq_sectors/1.xml
  def destroy
    @employe_ccq_sector = EmployeCcqSector.find(params[:id])
    @employe_ccq_sector.destroy

    respond_to do |format|
      format.html { redirect_to(employe_ccq_sectors_url) }
      format.xml  { head :ok }
    end
  end
end
