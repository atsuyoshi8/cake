class Public::ItemsController < ApplicationController

  def index
    @items=Item.all
  end

  def show
    @item=Item.find(params[:id])
    @items=Item.new
    @cart_item=CartItem.new
  end

  private
  def item_params
    params.require(:item).permit(:name, :introduction, :genre_id ,:price, :is_active, :image,:amount)
  end

end
