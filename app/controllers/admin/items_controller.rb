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
    @item = Item.find(params[:id])

  end

  def update
    @item = Item.find(params[:id])
    @item.update(item_params)
    redirect_to admin_item_path(@item)
  end

  private
  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id ,:price, :is_active)
  end

end

