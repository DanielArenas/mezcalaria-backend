class Municipio < ActiveRecord::Base
  has_many :zona_produccion, dependent: :restrict_with_error

  # == Associations ==
  belongs_to :estado
  belongs_to :region

  # == Validations ==
  validates :nombre, :estado, :region, presence: true

  # == Methods ==

  def to_s
    nombre
  end
end
