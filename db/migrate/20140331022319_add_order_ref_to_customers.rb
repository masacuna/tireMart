class AddOrderRefToCustomers < ActiveRecord::Migration
  def change
    add_reference :customers, :category, index: true
  end
end
