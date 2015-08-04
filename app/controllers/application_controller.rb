class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_filter :configure_permitted_parameters, if: :devise_controller?

  before_action :require_current_user, :only => [:edit, :update, :destroy]

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :username
  end

  def require_current_user
    unless params[:id] == current_user.id.to_s
      flash[:alert] = "You're not authorized to perform this action"
      redirect_to root_path
    end
  end
end
