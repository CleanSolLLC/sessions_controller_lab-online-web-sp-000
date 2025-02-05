class SessionsController < ApplicationController
  def new
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to login_path
    else
        session[:name] = params[:name]
        redirect_to root_path
    end
  end

  def destroy
    session[:name].nil? if session[:name].nil?
    session.delete :name if session[:name]
  end
end
