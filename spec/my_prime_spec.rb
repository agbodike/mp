require '../my_prime.rb'

describe Integer, "#prime?" do
  it "returns false for non-prime numbers" do
    4.prime?.should eq(false)
    9.prime?.should eq(false)
    14.prime?.should eq(false)
    225.prime?.should eq(false)
  end

  it "returns true for prime numbers" do
    2.prime?.should eq(true)
    3.prime?.should eq(true)
    11.prime?.should eq(true)
    101.prime?.should eq(true)
  end
end
