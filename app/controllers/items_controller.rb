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
