require './lib/caesar-cipher'

describe "check_letters_to_shift" do
    it "take letter and positive value of shift and return the shifted value" do
        expect(check_letters_to_shift("A", 5)).to eql("F")
    end

    it "take letter and negativw value of shift and return the shifted value" do
        expect(check_letters_to_shift("F", -5)).to eql("A")
    end
end