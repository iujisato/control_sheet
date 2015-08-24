class LoginController < ApplicationController
  def new
  end
  def destroy
      session.clear
      redirect_to root_path
  end

  def create
    company = Company.find_by_username(params[:company][:username])

    if company && company.valid_password?(params[:company][:password])
      session[:company_id] = company.id
      redirect_to root_path
    else
      flash.now[:danger] = "Invalid e-mail or password."
      render action: "new" 
    end
  end
end