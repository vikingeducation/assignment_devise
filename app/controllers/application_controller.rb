class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :configure_permitted_parameters, if: :devise_controller?

  def require_current_user
    # don't forget that params is a string!!!
    unless params[:id] == current_user.id.to_s
      flash[:error] = "You're not authorized to view this"
      redirect_to root_url
    end
  end
  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
  end
end
