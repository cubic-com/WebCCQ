class EmployeCcqSchedulesController < ApplicationController
  # GET /employe_ccq_schedules
  # GET /employe_ccq_schedules.xml
  def index
    @employe_ccq_schedules = EmployeCcqSchedule.all

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employe_ccq_schedules }
    end
  end

  # GET /employe_ccq_schedules/1
  # GET /employe_ccq_schedules/1.xml
  def show
    @employe_ccq_schedule = EmployeCcqSchedule.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employe_ccq_schedule }
    end
  end

  # GET /employe_ccq_schedules/new
  # GET /employe_ccq_schedules/new.xml
  def new
    @employe_ccq_schedule = EmployeCcqSchedule.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employe_ccq_schedule }
    end
  end

  # GET /employe_ccq_schedules/1/edit
  def edit
    @employe_ccq_schedule = EmployeCcqSchedule.find(params[:id])
  end

  # POST /employe_ccq_schedules
  # POST /employe_ccq_schedules.xml
  def create
    @employe_ccq_schedule = EmployeCcqSchedule.new(params[:employe_ccq_schedule])

    respond_to do |format|
      if @employe_ccq_schedule.save
        flash[:notice] = 'EmployeCcqSchedule was successfully created.'
        format.html { redirect_to(@employe_ccq_schedule) }
        format.xml  { render :xml => @employe_ccq_schedule, :status => :created, :location => @employe_ccq_schedule }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employe_ccq_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employe_ccq_schedules/1
  # PUT /employe_ccq_schedules/1.xml
  def update
    @employe_ccq_schedule = EmployeCcqSchedule.find(params[:id])

    respond_to do |format|
      if @employe_ccq_schedule.update_attributes(params[:employe_ccq_schedule])
        flash[:notice] = 'EmployeCcqSchedule was successfully updated.'
        format.html { redirect_to(@employe_ccq_schedule) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employe_ccq_schedule.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employe_ccq_schedules/1
  # DELETE /employe_ccq_schedules/1.xml
  def destroy
    @employe_ccq_schedule = EmployeCcqSchedule.find(params[:id])
    @employe_ccq_schedule.destroy

    respond_to do |format|
      format.html { redirect_to(employe_ccq_schedules_url) }
      format.xml  { head :ok }
    end
  end
end
