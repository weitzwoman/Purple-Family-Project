require 'rails_helper'

describe Survey do
  it { should have_many :questions }
  it { should accept_nested_attributes_for(:questions) }
end
