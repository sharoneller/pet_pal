class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#petfinder = Petfinder::Client.new('8991560566161bd2cc8810f20188b537', '226df73194b86c99403270e76fba91da')

before_filter :configure_permitted_parameters, if: :devise_controller?

protected
def configure_permitted_parameters
   devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:username, :email, :password, :password_confirmation, :remember_me) }
   devise_parameter_sanitizer.for(:sign_in) { |u| u.permit(:login, :username, :email, :password, :remember_me) }
   devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:username, :email, :password, :password_confirmation, :current_password) }
end 
  Petfinder.configure do |config|
  config.api_key = '8991560566161bd2cc8810f20188b537'
  config.api_secret = '226df73194b86c99403270e76fba91da'
end
petfinder = Petfinder::Client.new
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
