class ItemsController < ApplicationController
  # should be removed when task (add item) is finalized
  # skip_after_action :verify_authorized, only: [:new, :create]

  skip_before_action :authenticate_user!, only: [:new, :create]

  def index
  end

  def show
  end

  def new
     @item = Item.new()

  end

  def create


    @item = Item.new(item_params)
    authorize @item
    @item.user = current_user
    if @item.save
      redirect_to(@items)
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
