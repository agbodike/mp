require '../my_prime.rb'

describe MyPrime, "#prime?" do
  it "returns false for non-prime numbers" do
    non-prime = MyPrime.new(4)
    non-prime.prime?.should eq(false)
  end
end
