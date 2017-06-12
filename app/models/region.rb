class Region < ActiveRecord::Base
  has_many :municipios, dependent: :restrict_with_error

  # == Associations ==
  belongs_to :estado

  # == Validations ==
  validates :nombre, :estado, presence: true

  # == Methods ==

  def to_s
    nombre
  end
end
