class TipoMezcal < ActiveRecord::Base
  has_many :mezcales, dependent: :restrict_with_error

  # == Validations ==
  validates :nombre, presence: true

  # == Methods ==

  def to_s
    nombre
  end
end
