class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception
  
  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_in) {|u| u.permit(:name, :email, 
      :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:sign_up) {|u| u.permit(:name, :email, :avatar,
      :password, :password_confirmation)}
    devise_parameter_sanitizer.for(:account_update) {|u| u.permit(:name, :email, 
      :avatar,:password, :password_confirmation, :current_password)}
  end
end
