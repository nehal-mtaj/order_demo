class OrdersController < ApplicationController
  before_action :set_order,only: [:show,:edit,:update,:destroy]
  def index
    @orders = Order.all
  end

  def new
    @order = Order.new
  end

  def edit
  end

  def show
  end

  def create
    @order =  Order.new(order_params)
    
    respond_to do|format|
      if @order.save
        format.html {redirect_to @order, notice: 'order was sussfully created.'}
      
      else
         format.html {render :new}

    end
   end
  end

  def update
    respond_to do|format|
      if @order.update(order_params)
        format.html {redirect_to @order, notice: 'order was sussfully updated.'}
        
      else
         format.html {render :edit}
       end
     end
   end

 def destroy

    if @order.destroy
       redirect_to order_path, notice: 'order was successfully destroyed.'
     end
   end

private
   
    def set_order
      @order = Order.find(params[:id])
    end

    def order_params
      params.require(:order).permit(:cust_name,:cust_phone_no)
    end
  end

