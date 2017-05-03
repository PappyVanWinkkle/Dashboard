module ApplicationHelper
  def login_user
    if current_user.is_a?(GuestUser)
      (link_to "Register", new_user_session_path, method: :new) +
        "<br>".html_safe +
      (link_to "Login", user_session_path, method: :create)
    else
      link_to  "Logout", destroy_user_session_path, method: :delete
    end
  end
end
