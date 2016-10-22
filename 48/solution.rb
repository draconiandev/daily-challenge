# array = (1..1000000).to_a
# odd_array = array.each { |e| e if e.even? }.compact << array.each { |e| e if e.odd? }.compact

require "benchmark"

def time_required
  array = (1..100000000).to_a
  Benchmark.bmbm do |bm|
    bm.report do
      array.map { |e| e if e.even? }.compact << array.map { |e| e if e.odd? }.compact
    end
    bm.report do
      array.collect { |e| e if e.even? }.compact << array.collect { |e| e if e.odd? }.compact
    end
    bm.report do
      array.each { |e| e if e.even? }.compact << array.each { |e| e if e.odd? }.compact
    end
  end
end

time_required

## For 10000000 values
# Rehearsal ------------------------------------
#    1.680000   0.020000   1.700000 (  1.701537)
#    1.680000   0.020000   1.700000 (  1.703443)
#    1.180000   0.020000   1.200000 (  1.292472)
# --------------------------- total: 4.600000sec

#        user     system      total        real
#    1.610000   0.020000   1.630000 (  1.631392)
#    1.610000   0.020000   1.630000 (  1.635216)
#    1.200000   0.020000   1.220000 (  1.248279)


## For 100000000 values
# Rehearsal ------------------------------------
#   17.020000   1.050000  18.070000 ( 18.074613)
#   17.090000   1.430000  18.520000 ( 18.521579)
#   12.060000   0.840000  12.900000 ( 13.828253)
# -------------------------- total: 49.490000sec

#        user     system      total        real
#   16.290000   1.350000  17.640000 ( 17.631499)
#   15.980000   1.390000  17.370000 ( 17.371736)
#   11.660000   0.630000  12.290000 ( 12.285428)
