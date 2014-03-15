class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :authorize
  helper_method :current_user
  
  private
  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
  
  
  protected 
  def authorize
    unless User.find_by_id(session[:user_id])
      flash[:notice] = 'Please log in'
      redirect_to :root
    end    
  end
  
  
end
