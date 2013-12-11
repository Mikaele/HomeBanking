class Correntistum < ActiveRecord::Base
  set_primary_key :cpf
  has_many :contums
  attr_accessible :cpf, :email, :endereco, :nome, :senha
end
