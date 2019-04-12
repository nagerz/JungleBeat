require "./lib/node"
require "./lib/linked_list"

list = LinkedList.new
p list
p list.head
list.append("doop")
p list
p list.head
p list.head.next_node
list.append("deep")
p list.head.next_node
list.count
list.to_string
