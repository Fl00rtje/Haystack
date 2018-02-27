class ItemsController < ApplicationController

  def index
  end

  def show
  end

  def new
     @item = Item.new()
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to(@item)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end

private
  def item_params
    params.require(:item).permit(:name, :description, :category, :shop_location, :price)
  end
end
