Author::    Afam Agbodike
Copyright:: Copyright (c) 2014 Afam Agbodike

## Multiply prime numbers

Extends the integer class adding methods to determine if a number is prime
and find the next prime number after a given integer.

### Installation:

```
bundle install
```

### Execution:

```
bundle exec ruby multiply_primes.rb [INTEGER]
```

[INTEGER] defaults to 10

### Caveats:
The prime number test method is not a particularly fast approach, but for
small numbers this is it appears to be faster, for an application that needed
to identify large quantities of large primes, it would be necessary to improve
the algorithm.
