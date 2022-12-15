class Admin::ItemsController < ApplicationController

  def new
     @item = Item.new
  end

  def create
     @items = Item.new(item_params)
     @items.save
     redirect_to admin_item_path(@items)

  end

  def index
    @item=Item.new
    @items=Item.all

  end

  def show
    @item=Item.find(params[:id])
    @items=Item.new
  end

  def edit
    @items = Item.find(params[:id])
    render "edit"
  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_items_path(@item.id)
  end

  private
  def item_params
    params.permit(:name, :introduction, :genre_id ,:price, :is_active)
  end

end

