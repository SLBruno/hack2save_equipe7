class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action :authenticate_user!

  include CanCan::ControllerAdditions

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys:[:name, :phone, :address, :city, :state, :country, :grade])

    devise_parameter_sanitizer.permit(:account_update, keys:[:name, :phone, :address, :city, :state, :country, :grade])
  end
end
