class ItemsController < ApplicationController

  def index
  end

  def show
  end

  def new
     @item = Item.new
  end

  def create
    @item = Item.new
    if @item.save
      redirect_to(Item.last)
    else
      render :new
    end
  end

  def edit
  end

  def update
  end
end
