require 'spec_helper'


describe Team, type: :model do
  subject { team }

  let(:team) { build :team }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:game_id) }
  end
end
