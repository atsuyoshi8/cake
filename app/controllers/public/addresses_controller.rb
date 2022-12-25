class Public::AddressesController < ApplicationController

  def index
    @customer=current_customer
    @address = Address.new
    @addresses = Address.all
  end

  def edit
    @addresses = Address.find(params[:id])

  end

  def create
    @addresses = Address.new(address_params)
    @addresses.save
    redirect_to addresses_path(@address)
  end

  def update
    @addresses = Address.find(params[:id])
    @addresses.update(address_params)
    redirect_to addresses_path(@addresses)
  end

  def destroy
    @addresses = Address.find(params[:id])
    @addresses.destroy
    redirect_to addresses_path
  end

  private
  def address_params
    params.require(:address).permit(:name, :postal_code, :address)
  end

end
