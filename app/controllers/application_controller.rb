class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :require_current_user

  before_action :configure_permitted_parameters, if: :devise_controller?





  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  private

  def require_current_user
    unless params[:id] == current_user.id.to_s
      respond_to do |format|
        format.html { redirect_to root_path, notice: "You're not authorized to view this" }
      end
    end
  end

end
