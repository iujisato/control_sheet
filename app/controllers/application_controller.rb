class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  private

  def current_company
  	@current_company ||= if session[:company_id]
  	  Company.find(session[:company_id])
  	end
  end
  helper_method :current_company

  def authorize_company
    unless current_company
      redirect_to root_path, alert: "You need to login to continue."
    end
  end


end
