class JobsController < ApplicationController

  before_action :find_job, except: [ :index, :new, :create ]

  def find_job
    @job = Job.find(params[:id])
  end
  
  def index
    @jobs = Job.all
  end

  def show
    @job.increment!(:views)
  end

  # Find the job we want to edit.
  def edit
  end
  
  def new
    # We start with an instance that is passed to our form.
    @job = Job.new
  end
  
  def info
    # view info for this job
  end

  def create
    @job = Job.create(job_params)
    if @job.save
      redirect_to job_path(@job), notice: 'Created New Job Listing'
    else
      render :new, notice: 'Validation failed'
    end   
  end

  def update
    if @job.update_attributes(job_params)
      redirect_to job_path(@job), notice: 'Updated Job Listing'
    else
      render :edit, notice: 'Update failed'
    end    
  end

  def destroy
    @job.destroy
    redirect_to jobs_path, notice: 'Deleted job'
  end
  
  private  
  def job_params
    params.require(:job)
      .permit(:title,
              :company,
              :description,
              :start_date,
              :salary,
              :contact_name,
              :contact_email,
              :contact_number,
              :published,
              :expires_after)
  end
  
end
