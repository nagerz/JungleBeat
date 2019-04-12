require "./lib/node"
require "./lib/linked_list"

list = LinkedList.new
list.append("plop")
list.append("suu")
list.prepend("dop")
list.to_string
list.insert(1, "woo")
list.to_string
list.find(1)
p list.includes?("woo")
