require 'spec_helper'


describe Player, type: :model do
  subject { player }

  let(:player) { build :player }

  describe 'validations' do
    it { should validate_presence_of(:team_id) }
    it { should validate_presence_of(:user_id) }
  end
end