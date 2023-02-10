class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?
  def current_ability
    if user_signed_in?
      @current_ability ||= ::UserAbility.new(current_user)
    else
      @current_ability ||= ::Ability.new(nil)
    end
  end
  rescue_from CanCan::AccessDenied do |_exception|
    redirect_to root_path, alert: '権限がありません。'
  end
  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :address, :role])
    devise_parameter_sanitizer.permit(:account_update, keys: [:name, :address])
  end
end
