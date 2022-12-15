class Admin::CustomersController < ApplicationController
  def index
   @customer = Customer.all
  end

  def show
    @customer = Customer.find(params[:id])
  end

  def edit
    @customer = Customer.find(params[:id])
     render "edit"
  end

  def update
    @customer = Customer.find(params[:id])
    @customer.update(customer_params)
    redirect_to admin_cutomers_path(@customer.id)
  end

  private
  def customer_params
    params.permit(:last_name, :frist_name, :last_name_kana ,:frist_name_kana, :postal_code, :address, :telephone_number, :is_deleted, :email)
  end

end
