require 'spec_helper'


describe Question, type: :model do
  subject { question }

  let(:question) { build :question }

  describe 'validations' do
    it { should validate_presence_of(:questionText) }
    it { should validate_presence_of(:pointValue) }
  end
end