require 'data_mapper'
require_relative '../../models/patient/identifier'
require_relative '../../models/patient'

describe Patient do
  it { should respond_to :identifiers }
end
