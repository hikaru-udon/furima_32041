class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  private

  def configure_permitted_parameters
    # binding.pry
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :email, :password, :first_name, :last_name, :first_name_katakana, :last_name_katakana, :birth_day])
  end
end
