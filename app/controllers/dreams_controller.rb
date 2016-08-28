class DreamsController < ApplicationController

  before_action :set_dream, only: :show

  def new
    @dream=Dream.new
    @number_of_elements = 0
  end

  def add_element_form
    byebug
    @number_of_elements = params[]
    render :new
  end

  def show

  end

  def create
    #byebug
    user_id = 1

    @dream = Dream.new(dream_params)
    @dream.user_id = user_id

    if @dream.save
      redirect_to dream_path(@dream)
    else
      render :new
    end
    #create thing
  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end

  def dream_params
    params.require(:dream).permit(:title, :description, :date, element_ids:[])
  end


end
