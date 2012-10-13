class MovimientoCaja < ActiveRecord::Base
  attr_accessible :descripcion, :monto, :tipo
end
