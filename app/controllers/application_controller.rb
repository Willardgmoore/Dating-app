class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  :set_current_user

  
  private

  def set_current_user
  	User.current = set_current_user
  end
  
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
