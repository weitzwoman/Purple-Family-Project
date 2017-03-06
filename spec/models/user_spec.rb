require 'rails_helper'

describe User do
  it { should have_many :answers }
  it { should have_many(:questions).through(:answers) }
end
