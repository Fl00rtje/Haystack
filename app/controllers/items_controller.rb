class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = policy_scope(Item).order(created_at: :asc)
  end

  def show
    @item = Item.find(params[:id])
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
