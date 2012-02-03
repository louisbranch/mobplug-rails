require 'spec_helper'

describe Role do

  context "validations" do

    let(:role) { FactoryGirl.build(:role) }

    subject {role}

    it "is valid" do
      should be_valid
    end

    it "requires a name" do
      role.name = nil
      should_not be_valid
      role.errors[:name].should include("can't be blank")
    end

  end
end
