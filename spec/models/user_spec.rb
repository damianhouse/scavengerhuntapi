require 'spec_helper'


describe User, type: :model do
  subject { user }

  let(:user) { build :user }

  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:password) }
    
    it 'email has to contain @' do
      expect { user.email = 'invalid' }
        .to change { user.valid? }.from(true).to(false)
    end
  end
end