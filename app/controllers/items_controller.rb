class ItemsController < ApplicationController

  def index
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

   def item_params
    params.require(:item).permit(:name, :description, :category, :shop_location, :price)
  end

end
