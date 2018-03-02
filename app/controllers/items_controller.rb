class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = policy_scope(Item).order(created_at: :asc)
    # Search all item names and descriptions for a search word
    if params[:query].present?
      sql_query = "name ILIKE :query OR description ILIKE :query"
      @items = @items.where(sql_query, query: "%#{params[:query]}%")
    end
    # Filter all items by a given category
    if params[:Category].present?
      @items = @items.where(:category => params[:Category])
    end
    # Filter all items by a given shop location
    if params[:Shop_location].present?
      @items = @items.where(:shop_location => params[:Shop_location])
    end

    # showing the map code
    @items = @items.where.not(latitude: nil, longitude: nil)
    @markers = @items.map do |item|
      {
        lat: item.latitude,
        lng: item.longitude#,
        # infoWindow: { content: render_to_string(partial: "/flats/map_box", locals: { flat: flat }) }
      }
    end
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
    @item.user = current_user
    coordinates = Item::SHOP_NAME_LAT_LONG[:shops].find{ |shop| shop[:name] == @item.shop_location }
    @item.latitude = coordinates[:latitude]
    @item.longitude = coordinates[:longitude]
    if @item.save
      authorize @item
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
    @item.update(item_params)
    authorize @item
    redirect_to(@item)
  end

private
  def item_params
    params.require(:item).permit(:name, :description, :category, :shop_location, :price, :photo, :available)
  end
end
