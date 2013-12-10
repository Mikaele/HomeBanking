class Correntistum < ActiveRecord::Base
  set_primary_key :cpf
  attr_accessible :cpf, :email, :endereco, :nome, :senha
end
