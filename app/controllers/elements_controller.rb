class ElementsController < ApplicationController

  before_action :set_element, only: :show

  def show
  end

  def index
    @elements=Element.all
  end

  private

  def set_element
    @element = Element.find(params[:id])
  end

end
