require 'rails_helper'

RSpec.describe Mezcal, :type => :model do
  it { should validate_presence_of :nombre }
  it { should validate_presence_of :tipo_maguey }
  it { should validate_presence_of :tipo_mezcal }
  it { should validate_presence_of :tipo_destilado }
  it { should validate_presence_of :marca }
  it { should validate_presence_of :zona_produccion }
  it { should validate_presence_of :fotografia }
end
