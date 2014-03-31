class AddCustomerRefToProvinces < ActiveRecord::Migration
  def change
    add_reference :provinces, :category, index: true
  end
end
