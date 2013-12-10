class Correntista < ActiveRecord::Base
  attr_accessible :cpf, :email, :endereco, :nome, :senha
end
