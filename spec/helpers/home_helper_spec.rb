require 'rails_helper'

# Specs in this file have access to a helper object that includes
# the HomeHelper. For example:
#
# describe HomeHelper do
#   describe "string concat" do
#     it "concats two strings with spaces" do
#       expect(helper.concat_strings("this","that")).to eq("this that")
#     end
#   end
# end
RSpec.describe HomeHelper do
  describe "#index" do
    it 'Checking' do
      expect(helper.index).to eq("Harry")
    end
  end
  describe "#create1" do
    it 'Complete' do
      expect {helper.create1("Ravi")}.to change{Hello.count}.by(1)
    end
    context "When name is invalid" do
      it 'Does not create the name' do
        expect(helper.create1("")).to be false
        expect {helper.create1("")}.to change{Hello.count}.by(0)
      end
    end
  end
end
