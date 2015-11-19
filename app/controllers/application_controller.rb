class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
#petfinder = Petfinder::Client.new('8991560566161bd2cc8810f20188b537', '226df73194b86c99403270e76fba91da')

  Petfinder.configure do |config|
  config.api_key = '8991560566161bd2cc8810f20188b537'
  config.api_secret = '226df73194b86c99403270e76fba91da'
end
petfinder = Petfinder::Client.new
  protect_from_forgery with: :exception
  before_action :authenticate_user!
end
