class ApplicationController < ActionController::Base
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  # allow_browser versions: :modern
  
  helper_method :current_selected_user

  before_action :ensure_user_selected

  def current_selected_user
    @current_selected_user ||= User.find_by(id: session[:user_id])
  end

  def ensure_user_selected
    unless current_selected_user
      redirect_to select_user_path unless request.path == select_user_path
    end
  end
end
