require '../my_prime.rb'

describe Integer, "#prime?" do
  it "returns false for less than 2" do
    1.prime?.should eq(false)
    0.prime?.should eq(false)
    -12.prime?.should eq(false)
  end

  it "returns true for 2" do
    2.prime?.should eq(true)
  end

  it "returns true for 3" do
    3.prime?.should eq(true)
  end

  it "returns false for even numbers other than 2" do
    4.prime?.should eq(false)
    128.prime?.should eq(false)
    101006.prime?.should eq(false)
  end

  it "returns true for numbers divisible by 3" do
    9.prime?.shoudl eq(false)
    147.prime?.should eq(false)
    89787.prime?.should eq(false)
  end
end
