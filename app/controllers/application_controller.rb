class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :admin, :days

  def admin
    admin_email_array = ["zach.newburgh@gmail.com"]
    admin_email_array.include?(current_user.email)
  end

  def days
    ["Monday","Tuesday","Wednesday","Thursday","Friday","Saturday","Sunday"]
  end

end
