class Mezcal < ActiveRecord::Base
  belongs_to :tipo_mezcal
  belongs_to :tipo_maguey
  belongs_to :tipo_destilado
  belongs_to :marca
  belongs_to :zona_produccion

  validates :nombre, :tipo_maguey, :tipo_mezcal, :tipo_destilado, :marca, :zona_produccion, :fotografia, presence: true

  mount_uploader :fotografia, MezcalUploader

	def get_language
		language == 1 ? "Español" : "English"
	end
end
