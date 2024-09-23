class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  helper_method :current_selected_user

  def current_selected_user
    @current_selected_user ||= User.find_by(id: session[:user_id])
  end
end
