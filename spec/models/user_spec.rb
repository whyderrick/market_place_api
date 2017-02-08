require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){FactoryGirl.build(:user)}
  subject { user }
  context "Responds to attributes" do
    it { should validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
    it { should validate_confirmation_of(:password) }
    it { should allow_value('example@example.com').for(:email) }
  end

  it { is_expected.to be_valid }
end
