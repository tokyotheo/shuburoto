class Admin::ReportTasksController < Admin::Base
  # GET /report_tasks
  # GET /report_tasks.xml
  def index
    @report_tasks = ReportTask.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @report_tasks }
    end
  end

  # GET /report_tasks/1
  # GET /report_tasks/1.xml
  def show
    @report_task = ReportTask.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @report_task }
    end
  end

  # GET /report_tasks/new
  # GET /report_tasks/new.xml
  def new
    @report_task = ReportTask.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @report_task }
    end
  end

  # GET /report_tasks/1/edit
  def edit
    @report_task = ReportTask.find(params[:id])
  end

  # POST /report_tasks
  # POST /report_tasks.xml
  def create
    @report_task = ReportTask.new(params[:report_task])

    respond_to do |format|
      if @report_task.save
        flash[:notice] = 'ReportTask was successfully created.'
        format.html { redirect_to(admin_report_task_path(@report_task)) }
        format.xml  { render :xml => @report_task, :status => :created, :location => @report_task }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @report_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /report_tasks/1
  # PUT /report_tasks/1.xml
  def update
    @report_task = ReportTask.find(params[:id])

    respond_to do |format|
      if @report_task.update_attributes(params[:report_task])
        flash[:notice] = 'ReportTask was successfully updated.'
        format.html { redirect_to(admin_report_task_path(@report_task)) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @report_task.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /report_tasks/1
  # DELETE /report_tasks/1.xml
  def destroy
    @report_task = ReportTask.find(params[:id])
    @report_task.destroy

    respond_to do |format|
      format.html { redirect_to(report_tasks_url) }
      format.xml  { head :ok }
    end
  end
end
