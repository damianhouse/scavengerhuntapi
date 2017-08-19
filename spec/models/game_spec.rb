require 'spec_helper'


describe Game, type: :model do
  subject { game }

  let(:game) { build :game }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:startTime) }
    it { should validate_presence_of(:endTime) }
  end
end