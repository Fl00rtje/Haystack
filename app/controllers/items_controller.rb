class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = policy_scope(Item).order(created_at: :asc)
  end

  def show
    @item = Item.find(params[:id])
    authorize @item
  end

  def new
    @item = Item.new()
    authorize @item
  end

  def create
    @item = Item.new(item_params)
    authorize @item
    @item.user = current_user
    if @item.save
      redirect_to(@item)
    else
      render :new
    end
  end

  def edit
    @item = Item.find(params[:id])
    authorize @item
  end

  def update
    @item = Item.find(params[:id])
    @item = Item.update(item_params)
    authorize @item
    redirect_to root_path
  end

private
  def item_params
    params.require(:item).permit(:name, :description, :category, :shop_location, :price, :photo)
  end
end
