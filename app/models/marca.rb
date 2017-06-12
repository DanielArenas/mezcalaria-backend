class Marca < ActiveRecord::Base
  # == Validations ==
  validates :nombre, :logotipo, presence: true
  has_many :mezcales, dependent: :restrict_with_error

  mount_uploader :logotipo, LogoUploader

  def to_s
    nombre
  end
end
