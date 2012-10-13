class Producto < ActiveRecord::Base
  attr_accessible :garantia, :margen, :nombre, :precio, :stock, :stockOptimo, :fampro
end
