require 'benchmark'
iterations = 1000000
b = Benchmark.measure do
  for i in 1..iterations do
    x = i
  end
end
c = Benchmark.measure do
  iterations.times do |i|
    x = i
  end
end
puts b
puts c
Benchmark.bmbm do |bmbm|
  bmbm.report("Rathanak") do
    Benchmark.bm do |bm|
      bm.report("for:") do
        for i in 1..iterations do
          x = i
        end
      end
      bm.report("times:") do
        iterations.times do |i|
          x = i
        end
      end
    end
  end
end
