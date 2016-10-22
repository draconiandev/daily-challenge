def lockers
  lockers = Array.new(1000, "closed")
  a = 1
  while a <= 1000
    i = 0
    while i < 1000 
      lockers[i]=lockers[i].eql?("closed") ? "open" : "closed" if ( i + 1 ) % a == 0
      i += 1
    end
    a += 1
  end
  puts "There are #{lockers.count("open")} open lockers"
  puts "The positions of open lockers are:" 
  p lockers.each_index.select{|x| lockers[x] == "open"}
end

lockers