require 'rails_helper'

describe Survey do
  it { should have_many :questions }
  it { should accepts_nested_attributes_for(:questions) }
end
