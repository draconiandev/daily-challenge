require 'benchmark'

def time_required_comparison
  array = (1..100000).to_a
  Benchmark.bm do |bm|
    bm.report('map') do
      array.map { |e| puts e }
    end
    bm.report('each') do
      array.each { |e| puts e }
    end
    bm.report('collect') do
      array.collect { |e| puts e }
    end
  end
end

time_required_comparison

# method        user          system          total         real
# map           0.140000      0.150000        0.290000      (  1.230415)
# each          0.120000      0.220000        0.340000      (  1.228222)
# collect       0.140000      0.160000        0.300000      (  1.226625)