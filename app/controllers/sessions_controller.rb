class SessionsController < ApplicationController
  def how_long
    @duration = Time.now - session[:time].to_time
    @last_session_time = session[:time]
    session[:time] = Time.now
  end
end
