class DreamsController < ApplicationController

  before_action :set_dream, only: [:show, :edit, :update, :destroy]
  before_action :check_if_logged_in, only: [:new, :edit]

  def new
    @dream=Dream.new
    @number_of_elements = 0
  end

  def index
    @dreams=Dream.sorted_dreams
  end

  def show
  end

  def create
    @dream = Dream.new(dream_params)
    @dream.user = current_user

    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
  end

  def edit
    if !correct_user?(@dream)
      redirect_to dream_path(@dream)
    end
  end

  def update
    if @dream.update(dream_params)
      redirect_to dream_path(@dream)
    else
      render :edit
    end
  end

  def destroy
    Dream.destroy(@dream)
    redirect_to user_path(current_user)
  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:title, :description, :date, :dream_type, element_ids:[])
  end

  def check_if_logged_in
    if !logged_in?
      redirect_to root_path
    end
  end


end
