class Empresa < ActiveRecord::Base
  attr_accessible :correo, :direccion, :nombre, :ruc, :telefono, :tipo
end
