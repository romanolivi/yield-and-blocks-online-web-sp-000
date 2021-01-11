def hello_t(array)
    if block_given?
      i = 0 
      
      while i < array.length 
      yield array[i]
      i = i + 1 
      end
      return array
    else
      puts "Hey! No block was given!"
    end
end


hello_t(["Tom", "John", "Wop"]) do |name|
  if name.start_with?("J")
    puts "Hello #{name}"
  end
end