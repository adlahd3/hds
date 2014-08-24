class OrdersController < ApplicationController
  load_and_authorize_resource
  before_action :set_order, only: [:show, :edit, :update, :destroy]

  # GET /orders_builder
  # GET /orders_builder.json
  def index
    @orders = Order.all.page(params[:page]).per(1)
  end

  # GET /orders_builder/1
  # GET /orders_builder/1.json
  def show
    @drivers = User.with_role :driver
  end

  # GET /orders_builder/new
  def new
    @order = Order.new
    @order_types = OrderType.all
  end

  # GET /orders_builder/1/edit
  def edit
  end

  # POST /orders_builder
  # POST /orders_builder.json
  def create
    @order = Order.new(order_params)
    respond_to do |format|
      if @order.save
        format.html { redirect_to @order, notice: 'Order was successfully created.' }
        format.json { render action: 'show', status: :created, location: @order }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /orders_builder/1
  # PATCH/PUT /orders_builder/1.json
  def update
    respond_to do |format|
      if @order.update(order_params)
        format.html { redirect_to @order, notice: 'Order was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /orders_builder/1
  # DELETE /orders_builder/1.json
  def destroy
    @order.destroy
    respond_to do |format|
      format.html { redirect_to orders_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_order
      @order = Order.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def order_params
      params.require(:order).permit(:customer_id,:address_id, :bill_number, :note, :bill_image,:order_type_id)
    end
end
