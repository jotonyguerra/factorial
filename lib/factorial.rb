require "benchmark"

def factorial(number)
  if number == 1 || number == 0
    1
  else
   factorial(number - 1) * number
  end
end

(1..40).each do |x|
    puts x
    Benchmark.bm (10) do |y|
      y.report ("recursive:") {factorial(x)}
    end
end
