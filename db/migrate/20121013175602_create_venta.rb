class CreateVenta < ActiveRecord::Migration
  def change
    create_table :venta do |t|
      t.string :comprador
      t.string :producto
      t.integer :cantidad
      t.decimal :montoTotal

      t.timestamps
    end
  end
end
