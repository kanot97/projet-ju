module ApplicationHelper
  def useradmin
    user_signed_in? && current_user.role == "admin"
  end
end
