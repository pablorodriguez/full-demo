RSpec.describe User, type: :model do
  subject do
    FactoryGirl.create(:user)
  end

  describe "validations" do
    it "should be valid" do
      expect(subject).to be_valid

    end

    it "should be invalid" do
    end

  end

end