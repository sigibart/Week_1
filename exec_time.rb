def exec_time(proc)
  t1 = Time.now
  proc.call
    Time.now - t1
end
  
