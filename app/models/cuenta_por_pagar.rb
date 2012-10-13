class CuentaPorPagar < ActiveRecord::Base
  attr_accessible :empresa, :fechaEmision, :fechaVencimiento, :monto, :numeroDocumento
end
