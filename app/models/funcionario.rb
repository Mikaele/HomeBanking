class Funcionario < ActiveRecord::Base
  attr_accessible :codigo, :email, :endereco, :funcao, :nome, :senha
end
