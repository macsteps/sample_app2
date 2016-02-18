module SessionsHelper

  # Log in the given user.
  def log_in(user)
    session[:user_id] = user.id
  end

  # Create and return currently logged in user (if any) as @current_user.
  def current_user
    @current_user ||= User.find_by(id: session[:user_id])
  end

  # Returns true if user is logged in, false otherwise.
  def logged_in?
    !current_user.nil?
  end

end
