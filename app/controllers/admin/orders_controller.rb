class Admin::OrdersController < ApplicationController
  def show
   @customer = Customer.find(params[:id])
   @order = Order.find(parms[:id])
  end
end
