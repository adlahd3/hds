class AjaxController < ApplicationController

  def get_districts
    if params[:city_id].present?
      @districts = District.where("city_id = ?", params[:city_id])
    end
    render :json => @districts
  end

  def get_addresses
    if params[:customer_id].present?
      customer = Customer.find(params[:customer_id])
      @addresses = customer.addresses
    end
    render :json => @addresses
  end

  def search_for_customer
    if params[:customer_mobile].present?
      @customer = Customer.find_by("mobile = ?",params[:customer_mobile])
    end
    render :json => @customer
  end

  def assign_order_to_driver
    if params[:order_id].present? and params[:driver_id].present?
      @order = Order.find_by("id = ?", params[:order_id])

      # check if it's the first time ?

      if @order.user_id == nil
         @order.user_id = params[:driver_id]
         @order.assign!
      else
        @order.update(user_id: params[:driver_id])
      end

    end
    render :json => @order
  end

end
