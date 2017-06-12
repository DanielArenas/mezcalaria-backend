require 'rails_helper'

RSpec.describe Municipio, :type => :model do
  it { should validate_presence_of :nombre }
  it { should validate_presence_of :estado }
  it { should validate_presence_of :region }
  it { should have_many(:zona_produccion).dependent(:restrict_with_error) }
end
