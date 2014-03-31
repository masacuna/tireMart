class AddLineItemRefToOrders < ActiveRecord::Migration
  def change
    add_reference :orders, :category, index: true
  end
end
