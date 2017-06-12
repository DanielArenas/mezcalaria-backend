require 'rails_helper'

RSpec.describe Marca, :type => :model do
  it { should validate_presence_of :nombre }
  it { should validate_presence_of :logotipo }
  it { should have_many(:mezcales).dependent(:restrict_with_error) }
end
