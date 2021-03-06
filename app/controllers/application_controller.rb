class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  helper_method :signed_in?
  def signed_in?
    !!current_user
  end

  def create_user_if_logged_out
    return if signed_in?

    user = User.first_or_create({
      name: Faker::Hacker.verb + "er",
      uid: SecureRandom.uuid
    })
    session[:user_id] = user.id
    redirect_to items_path
  end

  helper_method :current_user
  def current_user
    if session[:user_id]
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
end
