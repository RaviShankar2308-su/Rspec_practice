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
  describe "#create" do
    it 'created' do
      expect {helper.create(name: "Ravi")}.to change{Hello.count}.by(1)
    end
    context "When name is invalid" do
      it 'Does not create the name' do
        expect(helper.create).to be false
        expect {helper.create}.to change{Hello.count}.by(0)
      end
    end
  end
  describe "#update" do
    it 'update' do
      hell = Hello.create!(name: "valid_name")
      id = hell.id
      expect(helper.update(id,"Ravi")).to be true
    end
    context "When name is not update" do
      it 'Does not update name' do
      hell = Hello.create!(name: "valid_name")
      id = hell.id
      expect(helper.update).to be false
      end
    end
  end
  describe "#destroy" do
    it 'destroy' do
      des = Hello.create!(name: "valid_name")
      id = des.id
      expect{helper.destroy(id)}.to change{Hello.count}. by(-1)
    end
    context "when name is not destroy" do
      it 'Does not destroy name' do
        des = Hello.create!(name: "valid_name")
        id = des.id
      expect {helper.destroy(id)}.to change{Hello.count}
      end
    end
  end
  describe "#show" do
    it 'show' do
      id = Hello.count
      id.times do |i|
        expect(helper.show(i)).to eq (Hello.find(i))
      end
    end
  end
end
