require "benchmark"

def time_required
  Benchmark.bmbm do |bm|
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = (array1 << array2).flatten
      array.sort
    end
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = (array1 + array2)
      array.sort
    end
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = array1.concat(array2)
      array.sort
    end
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = array1.push(*array2)
      array.sort
    end
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = array2.unshift(*array1)
      array.sort
    end
    bm.report do
      array1 = Array.new(100000) { rand(1..9) }
      array2 = Array.new(100000) { rand(1..9) }
      array = array1.insert(array1.length, *array1)
      array.sort
    end
  end
end

time_required


# Rehearsal ------------------------------------
#    0.080000   0.000000   0.080000 (  0.081515)
#    0.060000   0.000000   0.060000 (  0.063723)
#    0.070000   0.000000   0.070000 (  0.063860)
#    0.060000   0.000000   0.060000 (  0.066669)
#    0.070000   0.000000   0.070000 (  0.063724)
#    0.060000   0.010000   0.070000 (  0.064105)
# --------------------------- total: 0.410000sec

#        user     system      total        real
#    0.080000   0.000000   0.080000 (  0.078866)
#    0.060000   0.000000   0.060000 (  0.066521)
#    0.060000   0.000000   0.060000 (  0.062080)
#    0.060000   0.010000   0.070000 (  0.063010)
#    0.070000   0.000000   0.070000 (  0.063439)
#    0.060000   0.000000   0.060000 (  0.063147)
