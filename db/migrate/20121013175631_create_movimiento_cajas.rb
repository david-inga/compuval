class CreateMovimientoCajas < ActiveRecord::Migration
  def change
    create_table :movimiento_cajas do |t|
      t.string :tipo
      t.string :descripcion
      t.string :monto

      t.timestamps
    end
  end
end
