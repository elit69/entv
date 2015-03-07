class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  include ApplicationHelper
  
  protect_from_forgery with: :exception

  before_action :add_permitted_params, if: :devise_controller?

  protected

    def add_permitted_params
      devise_parameter_sanitizer.for(:sign_up).concat [:username, :phone_number, :address]
      devise_parameter_sanitizer.for(:account_update).concat [:username, :phone_number, :address]
    end
    
    def admin_controller
      devise_controller? && resource_name == :admins
    end
end
