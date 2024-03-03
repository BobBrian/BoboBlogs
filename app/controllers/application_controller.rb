class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  #Allow only Blogers to make Posts
  before_action :authenticate_user!

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:screenname, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:screenname])
  end

  def authorize_blogger
    unless current_user && current_user.role == "Blogger"
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end

  def authorize_admin
    unless current_user && current_user.role == "Admin"
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
  
end
