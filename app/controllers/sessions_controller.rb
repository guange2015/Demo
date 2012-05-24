class SessionsController < ApplicationController
  def new
    
  end

  def create
    user = User.find_by_email(params[:user][:email])
    if user.try(:authenticate, params[:user][:password])
      redirect_to user
    else
      flash.now[:error] = 'error: wrong email or password.'
      render :new
    end
  end

  def destory
  end
end
