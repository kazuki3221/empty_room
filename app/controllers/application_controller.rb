class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  helper_method :current_user


  def current_user
    return unless session[:user_id]
    @current_user ||= User.find(session[:user_id])
  end

  def after_sign_in_path_for(resource)
    pages_show_path
  end



  private
  def sign_in_required
    redirect_to new_user_session_url unless user_signed_in?
  end

  protected
  def configure_permitted_parameters
    added_attrs = [ :email, :username, :password, :password_confirmation ]
    devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    devise_parameter_sanitizer.permit :account_update, keys: added_attrs
    devise_parameter_sanitizer.permit :sign_in, keys: added_attrs
  end

end
