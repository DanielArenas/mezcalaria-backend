class ZonaProduccion < ActiveRecord::Base
  has_many :mezcales, dependent: :restrict_with_error

  # == Associations ==
  belongs_to :municipio

  # == Validations ==
  validates :localidad, :municipio, presence: true

  # == Methods ==

  def to_s
    localidad
  end
end
