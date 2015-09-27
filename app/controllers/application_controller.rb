class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  :set_current_user

  
  private

  def set_current_user
  	User.current = set_current_user
  end

  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.for(:sign_up) << :first_name, :last_name, :age, :gender, :city, :state, :vehicle_type
    devise_parameter_sanitizer.for(:account_up) << :first_name, :last_name, :age, :gender, :city, :state, :vehicle_type
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
