class DreamsController < ApplicationController

  before_action :set_dream, only: :show

  def new
  end

  def show

  end

  private

  def set_dream
    @dream = Dream.find(params[:id])
  end


end
