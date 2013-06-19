class GalleryController < ApplicationController

  def index
    @foods = Food.all
    @categories = Category.all
  end
end
