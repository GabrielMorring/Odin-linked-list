require_relative "lib/linked_list"

list = LinkedList.new

list.prepend(20)
list.append(90)
list.append("hi")
list.append(34.5)
list.prepend("100")
list.prepend("yo")
list.append("bor")

puts list
puts list.size

puts list.contains?("100")
puts list.contains?("yo")
puts list.contains?("bor")
puts list.contains?(90)
puts list.contains?("again")

puts list.index("bor")
