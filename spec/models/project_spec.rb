require 'spec_helper'

describe Project do

  context "validations" do

    let(:project) { FactoryGirl.build(:project) }

    subject {project}

    it "is valid" do
      should be_valid
    end

    it "requires a name" do
      project.name = nil
      should_not be_valid
      project.errors[:name].should include("can't be blank")
    end

    it "requires a description" do
      project.description = nil
      should_not be_valid
      project.errors[:description].should include("can't be blank")
    end

    it "requires a launch date" do
      project.launch = nil
      should_not be_valid
      project.errors[:launch].should include("can't be blank")
    end

  end

end
