require 'spec_helper'

describe Category do

  context "validations" do

    let(:category) { FactoryGirl.build(:category) }

    subject {category}

    it "is valid" do
      should be_valid
    end

    it "requires a name" do
      category.name = nil
      should_not be_valid
      category.errors[:name].should include("can't be blank")
    end

  end

end
