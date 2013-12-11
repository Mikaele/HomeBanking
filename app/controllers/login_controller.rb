class LoginController < ApplicationController
 def entrar_hb
   @entrar= Correntistum.find_by_nome_and_conta(params[:correntistum][:nome])
 end

  def sair

  end
end
