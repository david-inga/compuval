class CuentaPorCobrar < ActiveRecord::Base
  attr_accessible :empresa, :fechaEmision, :fechaVencimiento, :monto, :numeroDocumento
end
