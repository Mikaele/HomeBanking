class Contum < ActiveRecord::Base
  set_primary_key :numero
  belongs_to :correnstistum
  attr_accessible :limite, :numero, :primeiro_corr, :segundo_corr, :terceiro_corr,:correntistum_id
end
