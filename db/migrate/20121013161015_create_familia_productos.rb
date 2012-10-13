class CreateFamiliaProductos < ActiveRecord::Migration
  def change
    create_table :familia_productos do |t|
      t.string :nombre
      t.string :descripcion

      t.timestamps
    end
  end
end
