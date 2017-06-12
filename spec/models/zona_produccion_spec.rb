require 'rails_helper'

RSpec.describe ZonaProduccion, :type => :model do
  it { should validate_presence_of :localidad }
  it { should validate_presence_of :municipio }
  it { should have_many(:mezcales).dependent(:restrict_with_error) }
end
