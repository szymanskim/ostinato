class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_filter :set_locale
  before_filter :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up,
      keys: %i[name surname email password terms_of_service])
  end

  private

  def set_locale
    I18n.locale = params[:locale] || I18n.default_locale
    Rails.application.routes.default_url_options[:locale] = I18n.locale
  end

  def authenticate_admin!
    authenticate_user!
    unless current_user.is_admin?
      flash[:alert] = I18n.t('admin_panel.only_admin')
      redirect_to root_path
    end
  end
end
