class DreamsController < ApplicationController

  before_action :set_dream, only: [:show, :edit, :update]
  before_action :check_if_logged_in, only: [:new, :edit]

  def new
    @dream=Dream.new
    @number_of_elements = 0
  end

  def show

  end

  def create
    #byebug
    @dream = Dream.new(dream_params)
    @dream.user = current_user

    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
    #create thing
  end

  def edit
  end

  def update
    if @dream.update(dream_params)
      redirect_to dream_path(@dream)
    else
      render :edit
    end
  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:title, :description, :date, element_ids:[])
  end

  def check_if_logged_in
    if !logged_in?
      redirect_to root_path
    end
  end


end
