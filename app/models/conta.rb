class Conta < ActiveRecord::Base
  attr_accessible :limite, :numero, :primeiro_corr, :segundo_corr, :terceiro_corr
end
