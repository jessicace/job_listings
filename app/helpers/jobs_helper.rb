module JobsHelper
  
  def top_job?(job)
    job.views >= 100
  end
  
end
