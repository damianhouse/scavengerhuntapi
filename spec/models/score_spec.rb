require 'spec_helper'


describe Score, type: :model do
  subject { score }

  let(:score) { build :score }

  describe 'validations' do
    it { should validate_presence_of(:team) }
    it { should validate_presence_of(:answer) }
  end
end