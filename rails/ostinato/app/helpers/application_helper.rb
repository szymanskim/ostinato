module ApplicationHelper
  def admin_signed_in?
    user_signed_in? && current_user.is_admin?
  end

  def author?(post)
    post.user == current_user
  end
end
