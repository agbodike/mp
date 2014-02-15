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
    9.prime?.should eq(false)
    147.prime?.should eq(false)
    89787.prime?.should eq(false)
  end

  it "returns false for composite numbers" do
    8.prime?.should eq(false)
    15.prime?.should eq(false)
    91.prime?.should eq(false)
    360207.prime?.should eq(false)
    78542127.prime?.should eq(false)
  end

  it "returns true for prime numbers" do
    7.prime?.should eq(true)
    13.prime?.should eq(true)
    17.prime?.should eq(true)
    370261.prime?.should eq(true)
    2147483647.prime?.should eq(true)
  end
end

describe Integer, "#next_prime" do
  it "returns 2 when called on 1" do
    1.next_prime.should eq(2)
  end

  it "returns 3 when called on 2" do
    2.next_prime.should eq(3)
  end

  it "returns 5 when called on 3" do
    3.next_prime.should eq(5)
  end

  it "returns 5 when called on 4" do
    4.next_prime.should eq(5)
  end

  it "returns 7 when called on 5" do
    5.next_prime.should eq(7)
  end

  it "returns 7 when called on 6" do
    6.next_prime.should eq(7)
  end

  it "returns 11 when called on 7" do
    7.next_prime.should eq(11)
  end

  it "returns 11 when called on 8" do
    8.next_prime.should eq(11)
  end

  it "returns 11 when called on 9" do
    9.next_prime.should eq(11)
  end

  it "returns 887 when called on 883" do
    883.next_prime.should eq(887)
  end

  it "returns 887 when called on 884" do
    884.next_prime.should eq(887)
  end

  it "returns 7919 when called on 7907" do
    7907.next_prime.should eq(7919)
  end

  it "returns 7919 when called on 7911" do
    7911.next_prime.should eq(7919)
  end
end

describe Integer, "#next_primes.first(n)" do
  it "returns [2,3] when called on 1 with parameter 2" do
    1.next_primes.first(2).should eq([2,3])
  end

  it "returns [971,977,983,991,997,1009,1013] when called on 968 with parameter 7" do
    968.next_primes.first(7).should eq([971,977,983,991,997,1009,1013])
  end
end
