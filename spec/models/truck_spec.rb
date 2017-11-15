require 'rails_helper'
describe Truck do
  it { should validate_presence_of :link }
  it { should validate_presence_of :make }
  it { should validate_presence_of :model }
  it { should validate_presence_of :year }
  it { should validate_presence_of :author }
end
