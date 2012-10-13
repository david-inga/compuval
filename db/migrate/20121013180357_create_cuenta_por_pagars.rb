class CreateCuentaPorPagars < ActiveRecord::Migration
  def change
    create_table :cuenta_por_pagars do |t|
      t.string :empresa
      t.string :numeroDocumento
      t.decimal :monto
      t.datetime :fechaEmision
      t.datetime :fechaVencimiento

      t.timestamps
    end
  end
end
