fork do
  5.times do
    sleep 1
    puts "I am an orphaned process!"
  end
end

abort "Parent Process died! Aborted!"
