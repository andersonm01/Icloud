class FindMyController < ApplicationController
  before_action :require_login

  def location
    @email = session[:email]
  end

  private

  def require_login
    redirect_to login_path unless session[:logged_in]
  end
end
