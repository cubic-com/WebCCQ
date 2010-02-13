class EmployesController < ApplicationController
  # GET /employes
  # GET /employes.xml
  def index
    @search = Employe.search(params[:search])
    @employes = @search.all.paginate :page => params[:page], :per_page => 10
       
    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @employes }
    end
  end

  # GET /employes/1
  # GET /employes/1.xml
  def show
    @employe = Employe.find(params[:id])
    @employe_attachments = EmployeAttachment.paginate :page => params[:page], :per_page => 5, :conditions => ['employes_id = ?', @employe.id]
       
    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @employe }
    end
  end

  # GET /employes/new
  # GET /employes/new.xml
  def new
    @employe = Employe.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @employe }
    end
  end

  # GET /employes/1/edit
  def edit
    @employe = Employe.find(params[:id])
  end

  # POST /employes
  # POST /employes.xml
  def create
    @employe = Employe.new(params[:employe])

    respond_to do |format|
      if @employe.save
        flash[:notice] = 'Employe was successfully created.'
        format.html { redirect_to(@employe) }
        format.xml  { render :xml => @employe, :status => :created, :location => @employe }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @employe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /employes/1
  # PUT /employes/1.xml
  def update
    @employe = Employe.find(params[:id])

    respond_to do |format|
      if @employe.update_attributes(params[:employe])
        flash[:notice] = 'Employe was successfully updated.'
        format.html { redirect_to(@employe) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @employe.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /employes/1
  # DELETE /employes/1.xml
  def destroy
    @employe = Employe.find(params[:id])
    @employe.destroy

    respond_to do |format|
      format.html { redirect_to(employes_url) }
      format.xml  { head :ok }
    end
  end
  
   def create_attachment
		return if params[:attachment].blank?
		@attachment = EmployeAttachment.new
		@attachment.employes_id = params[:id]
		@attachment.added_user = session[:user_id]
		@attachment.filesize = File.size(params[:attachment])
		@attachment.uploaded_file = params[:attachment]
 
		if @attachment.save
			flash[:notice] = "Thank you for your submission..."
			redirect_to :action => "index"
		else
			flash[:error] = "There was a problem submitting your attachment."
			render :action => "new"
		end
	end

  
  
end
