class ApplicationController < ActionController::Base
  protect_from_forgery
  
  protected
  
  def confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'access', :action => 'login')
      return false # halts the before_filter
    else
      return true
    end
  end
  
  protected
  
  def public_user_confirm_logged_in
    unless session[:user_id]
      flash[:notice] = "Please log in."
      redirect_to(:controller => 'mystuff', :action => 'login')
      return false # halts the before_filter
    else
      return true
    end
  end
  
end
