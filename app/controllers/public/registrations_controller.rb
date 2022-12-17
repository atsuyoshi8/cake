class Public::RegistrationsController < Devise::RegistrationsController


  # def new
  # end

  # def create
  # end

  protected
  def after_sign_up_path_for(resource)
    public_customer_path
  end

end
