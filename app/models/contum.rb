class Contum < ActiveRecord::Base
  set_primary_key :numero
  attr_accessible :limite, :numero, :primeiro_corr, :segundo_corr, :terceiro_corr
end
