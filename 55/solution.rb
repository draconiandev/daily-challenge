def sliding_window(window, size)
  windows = window.each_cons(size).to_a
  i = 0
  min_window = []
  while i < windows.size
    min_window << windows[i].min
    i += 1
  end
  p min_window
end

window = Array.new(10) { Random.rand(9) }
size = 1 + Random.rand(9)
sliding_window(window, size)