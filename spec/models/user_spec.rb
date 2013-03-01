require 'spec_helper'

describe User do
  describe :Validations do
    it { should validate_presence_of(:email) }
    it { should validate_presence_of(:username) }
  end

  describe :Callbacks do
    describe :downcase_email do
      #let(:user) { User.new(email: "foo@example.com", username: "foo")}
      let(:user) { build(:user, :username => "remi") }

      before do
        user.should_receive(:downcase_email).once
      end

      it "should be called before save" do
        user.save
      end
    end
  end
end
