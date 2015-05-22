class HomeController < ApplicationController
  def index
    redirect_to jobs_show_path if params[:source] == 'linkedin'
  end
end
