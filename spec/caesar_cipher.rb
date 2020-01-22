require_relative '../lib/caesar_cipher.rb'

describe "the is_multiple_of_3_or_5? method" do
  it "should return TRUE when an integer is a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(3)).to eq(true)
    expect(is_multiple_of_3_or_5?(5)).to eq(true)
    expect(is_multiple_of_3_or_5?(51)).to eq(true)
    expect(is_multiple_of_3_or_5?(45)).to eq(true)
  end

  it "should return FALSE when an integer is NOT a multiple of 3 or 5" do
    expect(is_multiple_of_3_or_5?(4)).to eq(false)
    expect(is_multiple_of_3_or_5?(13)).to eq(false)
    expect(is_multiple_of_3_or_5?(71)).to eq(false)
    expect(is_multiple_of_3_or_5?(98)).to eq(false)
  end
end

# sum_of_3_or_5_multiples(final_number)
describe "the sum_of_3_or_5_multiples method" do
  it "should return a SUM of integers multiple of 3 or 5" do
    expect(sum_of_3_or_5_multiples(10)).to eq(23)
    expect(sum_of_3_or_5_multiples(11)).to eq(33)
    expect(sum_of_3_or_5_multiples(30)).to eq(195)
    expect(sum_of_3_or_5_multiples(31)).to eq(225)
  end

  it "should NOT return a SUM of integers multiple of 3 or 5" do
    expect(sum_of_3_or_5_multiples(10.3)).to eq("not integers")
    expect(sum_of_3_or_5_multiples(-2)).to eq("not integers")
    expect(sum_of_3_or_5_multiples(30.56)).to eq("not integers")
  end
end

