class ItemsController < ApplicationController
  skip_before_action :authenticate_user!, only: :index

  def index
    @items = policy_scope(Item).order(created_at: :asc)
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end
end
