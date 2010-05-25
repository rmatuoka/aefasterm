class SessionsController < ApplicationController

  def index
    render :action => "new"
  end

  def create
    @Partner = Partner.find(:first, :conditions => ['email = ? AND password = ?', params[:email], params[:senha]])

    if @Partner
      session[:logged] = true
      session[:login] = @Partner.email
      redirect_to parceiros_path
    else
      flash[:msg] = "Usuário e/ou senha inválidos."
      render :action => "new"
    end
  end

  def destroy
    session[:logged] = false
    redirect_to home_path
  end
end
