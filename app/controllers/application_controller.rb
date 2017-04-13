class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :user_registration_params, if: :devise_controller?

  protected

  def user_registration_params
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username, :first_name, :last_name])
  end

  def authorized_user?
    unless user_signed_in? && current_user.id.to_s == params[:id]
      flash[:alert] = "Sorry, you're not authorized to do that"
      redirect_to root_path
    end
  end

  def is_owner?(user)
    user_signed_in? && current_user == user
  end
  helper_method :is_owner?




end
