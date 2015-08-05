module UsersHelper

  def sign_in_out
    if current_user
      link_to "Sign out of #{current_user.first_name} #{current_user.last_name}", destroy_user_session_path, :method => :delete
    else
      link_to 'Sign In', new_user_session_path
    end
  end

end
