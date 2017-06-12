require 'rails_helper'

RSpec.describe Region, :type => :model do
  it { should validate_presence_of :nombre }
  it { should validate_presence_of :estado }
  it { should have_many(:municipios).dependent(:restrict_with_error) }
end
