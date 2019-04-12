require "./lib/node"
require "./lib/linked_list"

list = LinkedList.new
list.append("plop")
list.to_string
list.append("suu")
list.prepend("dop")
list.to_string
list.count
list.insert(1, "woo")
list.to_string
list.count
list.insert(4, "woo")
list.to_string
