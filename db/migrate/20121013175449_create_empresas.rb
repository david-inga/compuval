class CreateEmpresas < ActiveRecord::Migration
  def change
    create_table :empresas do |t|
      t.string :ruc
      t.string :nombre
      t.string :direccion
      t.string :telefono
      t.string :correo
      t.string :tipo

      t.timestamps
    end
  end
end
