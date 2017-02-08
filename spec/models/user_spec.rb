require 'rails_helper'

RSpec.describe User, type: :model do
  let(:user){FactoryGirl.build(:user)}
  subject { user }
  context "Responds to attributes" do
    it { is_expected.to respond_to( :email ) }
    it { is_expected.to respond_to( :password ) }
    it { is_expected.to respond_to( :password_confirmation ) }
  end

  it { is_expected.to be_valid }
end
