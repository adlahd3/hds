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

end
