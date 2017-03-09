require 'rails_helper'

describe Answer do
  it { should belong_to :question }
  it { should belong_to :user }

  # describe '#show_true' do
  #   it 'replaces boolean value with statement if user chooses answer' do
  #
  #   end
  # end
end
