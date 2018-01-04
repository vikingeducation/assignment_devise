module UsersHelper

  def is_current_user?(user)
    user_signed_in? && user.id == current_user.id
  end
end
