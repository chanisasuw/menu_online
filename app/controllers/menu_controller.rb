class MenuController < ApplicationController

  def index
    @foods = Food.all.sort_by(&:category)
  end

  def show
    @food = Food.find(params[:id])
  end
end
