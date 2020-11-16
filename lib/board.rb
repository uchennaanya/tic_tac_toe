obj = Object.new

def obj.talk
    puts "I am an object"
end
def obj.ans
    puts "I am an object"
end

def obj.available?
  false
end

obj.talk
puts obj.available? ? "Yes I am an object" : "I am not"
obj.ans

def add(first_name = " Nkah", *names)
    print names.to_a + first_name
end

add(" Anya",' Uche', ' Martins', ' Ogeleh')
