class AjaxController < ApplicationController

  def get_districts
    if params[:city_id].present?
      @districts = District.where("city_id = ?", params[:city_id])
    end
    render :json => @districts
  end

end
