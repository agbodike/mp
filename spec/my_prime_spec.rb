require '../my_prime.rb'

describe MyPrime, "#prime?" do
  it "returns false for non-prime numbers" do
    non_prime = MyPrime.new(4)
    non_prime.prime?.should eq(false)
  end
end
