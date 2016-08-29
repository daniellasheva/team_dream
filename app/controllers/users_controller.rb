class UsersController < ApplicationController

  before_action :set_user, only: :show

  def new
    @user=User.new
  end

  def show
  end

  def create
    @user=User.new(user_params)
      if @user.save
        session[:user_id] = @user.id
        redirect_to user_path(@user)
      else
        render :new
      end
  end


  private

  def set_user
    @user=User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :username, :password, :password_confirmation, :date_of_birth, :gender, :favorite_animal)
  end


end
