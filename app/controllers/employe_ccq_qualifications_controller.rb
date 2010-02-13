class EmployeCcqQualificationsController < ApplicationController
  # GET /employe_ccq_qualifications
  # GET /employe_ccq_qualifications.xml
  def index
    @employe_ccq_qualifications = EmployeCcqQualification.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employe_ccq_qualifications }
    end
  end

  # GET /employe_ccq_qualifications/1
  # GET /employe_ccq_qualifications/1.xml
  def show
    @employe_ccq_qualification = EmployeCcqQualification.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employe_ccq_qualification }
    end
  end

  # GET /employe_ccq_qualifications/new
  # GET /employe_ccq_qualifications/new.xml
  def new
    @employe_ccq_qualification = EmployeCcqQualification.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employe_ccq_qualification }
    end
  end

  # GET /employe_ccq_qualifications/1/edit
  def edit
    @employe_ccq_qualification = EmployeCcqQualification.find(params[:id])
  end

  # POST /employe_ccq_qualifications
  # POST /employe_ccq_qualifications.xml
  def create
    @employe_ccq_qualification = EmployeCcqQualification.new(params[:employe_ccq_qualification])

    respond_to do |format|
      if @employe_ccq_qualification.save
        flash[:notice] = 'EmployeCcqQualification was successfully created.'
        format.html { redirect_to(@employe_ccq_qualification) }
        format.xml  { render :xml => @employe_ccq_qualification, :status => :created, :location => @employe_ccq_qualification }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employe_ccq_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employe_ccq_qualifications/1
  # PUT /employe_ccq_qualifications/1.xml
  def update
    @employe_ccq_qualification = EmployeCcqQualification.find(params[:id])

    respond_to do |format|
      if @employe_ccq_qualification.update_attributes(params[:employe_ccq_qualification])
        flash[:notice] = 'EmployeCcqQualification was successfully updated.'
        format.html { redirect_to(@employe_ccq_qualification) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employe_ccq_qualification.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_ccq_qualifications/1
  # DELETE /employe_ccq_qualifications/1.xml
  def destroy
    @employe_ccq_qualification = EmployeCcqQualification.find(params[:id])
    @employe_ccq_qualification.destroy

    respond_to do |format|
      format.html { redirect_to(employe_ccq_qualifications_url) }
      format.xml  { head :ok }
    end
  end
end
