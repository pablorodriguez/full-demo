require 'rails_helper'

RSpec.describe User, type: :model do
  subject do
    FactoryGirl.build(:user)
  end

  describe "validations" do
    it "should be valid" do
      expect(subject).to be_valid
    end

    it "not name should be invalid" do
      user = FactoryGirl.build(:user,name: nil)
      expect(user).not_to be_valid
    end

    it "not email should be invalid" do
      user = FactoryGirl.build(:user,email: nil)
      expect(user).not_to be_valid
    end

  end

end