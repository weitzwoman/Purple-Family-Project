require 'rails_helper'

describe Question do
  it { should belong_to :survey }
  it { should have_many :answers }
  it { should have_many(:users).through(:answers) }
  it { should accept_nested_attributes_for(:answers) }
end
