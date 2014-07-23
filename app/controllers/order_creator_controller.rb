class OrderCreatorController < ApplicationController
  include Wicked::Wizard

  steps :configure_customer, :configure_address, :configure_order

  def show
    @user = current_user
    case step
      when :configure_customer

        @all_customers = Customer.all
      when :configure_address

    end
    render_wizard
  end

  def update
    @user = current_user
    @user.update_attributes(params[:user])
    render_wizard @user
  end
end
