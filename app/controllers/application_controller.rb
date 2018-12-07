class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :set_locale

    before_action :configure_permitted_parameters, if: :devise_controller?

    protected

    def configure_permitted_parameters
    	devise_parameter_sanitizer.permit(:sign_up, keys: [:username])
    	devise_parameter_sanitizer.permit(:sign_in, keys: [:username])
        devise_parameter_sanitizer.permit(:account_update, keys: [:username, :avatar])
    end

    private

    def set_locale
    	I18n.locale = params[:locale] || I18n.default_locale
    	# current_user.locale
        # request.subdomain
    	# request.env["HTTP_ACCEPT_LANGUAGE"]
        # request.remote_ip
    end

    def default_url_options(options = {})
    	{ locale: I18n.locale }.merge options
    end


end




























