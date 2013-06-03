class ManageFoodsController < ApplicationController

  def index
    @foods = Food.all.paginate(:page => params[:page], :per_page => 20)
  end

end
