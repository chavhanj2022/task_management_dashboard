# app/helpers/sessions_helper.rb

module SessionsHelper
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end

    def authenticate_user
      unless current_user
        redirect_to root_path, alert: 'You must be logged in to access this page.'
      end
    end
  end
  