def sandwich
  array = []
  ('a'..'z').each do |char|
    array = array + char.split + array
  end
end

sandwich

# require "benchmark"

# def time
#   Benchmark.bmbm do |bm|
#     bm.report do
#       array = []
#       ('a'..'z').collect do |char|
#         array = array + char.split + array
#       end
#     end
#     bm.report do
#       array = []
#       ('a'..'z').map do |char|
#         array = array + char.split + array
#       end
#     end
#     bm.report do
#       array = []
#       ('a'..'z').each do |char|
#         array = array + char.split + array
#       end
#     end
#     bm.report do
#       array = []
#       ('a'..'z').each_with_index do |char|
#         array = array + char.split + array
#       end
#     end
#   end
# end

# time

# Rehearsal ------------------------------------
#    1.700000   0.140000   1.840000 (  1.835868)
#    2.910000   0.100000   3.010000 (  3.007794)
#    5.580000   0.130000   5.710000 (  5.707973)
#    5.920000   0.160000   6.080000 (  6.086759)
# -------------------------- total: 16.640000sec

#        user     system      total        real
#    1.690000   0.140000   1.830000 (  1.823045)
#    1.680000   0.140000   1.820000 (  1.814162)
#    1.250000   0.130000   1.380000 (  1.378195)
#    1.450000   0.130000   1.580000 (  1.577797)

