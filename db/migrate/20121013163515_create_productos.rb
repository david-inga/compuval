class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.decimal :precio
      t.integer :garantia
      t.integer :stock
      t.integer :stockOptimo
      t.integer :margen

      t.timestamps
    end
  end
end
