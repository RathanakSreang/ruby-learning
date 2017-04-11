puts showPrime(1000000)
def showPrime(num)
  return if num < 2
  is_composite = Array.new(num)
  primes = []
  
  is_composite[0] = 1
  is_composite[1] = 1
  n = 2
  while n*n <= num do
    if is_composite[n] != 1 
      z = n * n
      while z<= num do
        is_composite[z] = 1
        z += n
      end
    end
    n += 1
  end

  h = 0
  while h<= num do
    if is_composite[h] != 1
      primes << h
    end
    h += 1
  end
  primes
end
