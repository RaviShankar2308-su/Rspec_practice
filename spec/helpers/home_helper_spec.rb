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
  describe "index" do
    it 'Checking' do
      expect(helper.index).to eq("Harry")
    end
  end
end
