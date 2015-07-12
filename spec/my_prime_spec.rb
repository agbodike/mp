require File.expand_path('../my_prime', File.dirname(__FILE__))

describe Integer, "#prime?" do
  it "returns false for less than 2" do
    expect(1.prime?).to eq(false)
    expect(0.prime?).to eq(false)
    expect(-12.prime?).to eq(false)
  end

  it "returns true for 2" do
    expect(2.prime?).to eq(true)
  end

  it "returns true for 3" do
    expect(3.prime?).to eq(true)
  end

  it "returns false for miscellaneous non-prime numbers" do
    non_primes = [4, 8, 9, 15, 91, 128, 147, 89787, 101006, 360207, 78542127]

    non_primes.each do |number|
      expect(number.prime?).to eq false
    end
  end

  it "returns true for prime numbers" do
    primes = [7, 13, 17, 370261, 2147483647]

    primes.each do |number|
      expect(number.prime?).to eq true
    end
  end
end

describe Integer, "#next_prime" do
  it "returns 2 when called on 1" do
    expect(1.next_prime).to eq(2)
  end

  it "returns 3 when called on 2" do
    expect(2.next_prime).to eq(3)
  end

  it "returns 5 when called on 3" do
    expect(3.next_prime).to eq(5)
  end

  it "returns 5 when called on 4" do
    expect(4.next_prime).to eq(5)
  end

  it "returns 7 when called on 5" do
    expect(5.next_prime).to eq(7)
  end

  it "returns 7 when called on 6" do
    expect(6.next_prime).to eq(7)
  end

  it "returns 11 when called on 7" do
    expect(7.next_prime).to eq(11)
  end

  it "returns 11 when called on 8" do
    expect(8.next_prime).to eq(11)
  end

  it "returns 11 when called on 9" do
    expect(9.next_prime).to eq(11)
  end

  it "returns 887 when called on 883" do
    expect(883.next_prime).to eq(887)
  end

  it "returns 887 when called on 884" do
    expect(884.next_prime).to eq(887)
  end

  it "returns 7919 when called on 7907" do
    expect(7907.next_prime).to eq(7919)
  end

  it "returns 7919 when called on 7911" do
    expect(7911.next_prime).to eq(7919)
  end
end

describe Integer, "#next_primes.first(n)" do
  it "returns [2,3] when called on 1 with parameter 2" do
    expect(1.next_primes.first(2)).to eq([2,3])
  end

  it "returns [971,977,983,991,997,1009,1013] when called on 968 with parameter 7" do
    expect(968.next_primes.first(7)).to eq([971,977,983,991,997,1009,1013])
  end
end
