# app/controllers/sessions_controller.rb

class SessionsController < ApplicationController
  def new
    # Render the login form
  end

  def create
    if verify_recaptcha
      user = User.find_by(email: params[:email])

      if user && user.authenticate(params[:password])
        session[:user_id] = user.id
        redirect_to root_path, notice: 'Login successful!'
      else
        flash.now[:alert] = 'Invalid email or password'
        render :new
      end
    else
      flash.now[:alert] = 'Please verify that you are not a robot.'
      render :new
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: 'Logged out successfully!'
  end
end
