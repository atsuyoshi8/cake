class Public::RegistrationsController < Devise::RegistrationsController


  # def new
  # end

  # def create
  # end

  protected
  def after_sign_up_path_for(resource)
    customers_my_page_path
  end

end
