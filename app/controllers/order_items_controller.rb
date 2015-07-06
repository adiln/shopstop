class OrderItemsController < ApplicationController
  def create
    @order = current_order
    @order.save!
    @order_item = @order.order_items.new(order_item_params)
    @order.save!
    session[:order_id] = @order.id
    flash[:notice] = 'Order added successfully!'
  end

  def update
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.update_attributes(order_item_params)
    @order_items = @order.order_items
    flash[:notice] = 'Order updated successfully!'
  end

  def destroy
    @order = current_order
    @order_item = @order.order_items.find(params[:id])
    @order_item.destroy
    @order_items = @order.order_items
    flash[:notice] = 'Order canceled successfully!'
  end

  private
  def order_item_params
    params.require(:order_item).permit(:quantity, :product_id)
  end
end
