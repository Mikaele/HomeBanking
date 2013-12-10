class Funcionario < ActiveRecord::Base
  set_primary_key :codigo
  attr_accessible :codigo, :email, :endereco, :funcao, :nome, :senha
end
