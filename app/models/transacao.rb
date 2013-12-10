class Transacao < ActiveRecord::Base
  attr_accessible :codigo, :data, :nro_conta, :nro_conta_transf, :tipo, :valor
end
