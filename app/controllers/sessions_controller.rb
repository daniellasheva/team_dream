class SessionsController < ApplicationController

  def new
    @user=User.new
  end

  def create

    @user=User.find_by(username: params[:user][:username])
    if @user.authenticate(params[:user][:password])
      session[:user_id]=@user.id
      redirect_to user_path(@user)
    else
      render :new
    end
    #some authentication syntax to verify user password
  end

  def destroy
    reset_session
    redirect_to new_session_path
  end

end
