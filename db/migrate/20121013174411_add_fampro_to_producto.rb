class AddFamproToProducto < ActiveRecord::Migration
  def change
    add_column :productos, :fampro, :string
  end
end
