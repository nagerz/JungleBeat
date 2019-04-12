require 'pry'

class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(new_data)
    if @head.nil?
      @head = Node.new(new_data)
    else
      current_node = @head
      add_node(new_data, current_node)
    end
    p new_data
  end

  def add_node(data, current_node)
    if current_node.next_node
      current_node = current_node.next_node
      add_node(data, current_node)
    else
      current_node.next_node = Node.new(data)
    end
  end

  def count
    count = 0
    if @head.nil?
      p count
    else
      current_node = @head
      count_node(current_node, count)
    end
  end

  def count_node(current_node, count)
    if current_node.next_node
      current_node = current_node.next_node
      count += 1
      count_node(current_node, count)
    else
      count += 1
      p count
    end
  end

  def to_string
    string = nil
    if @head.nil?
      p string
    else
      current_node = @head
      string = current_node.data
      string_node(current_node, string)
    end
  end

  def string_node(current_node, string)
    if current_node.next_node
      current_node = current_node.next_node
      string = string + " " + current_node.data
      string_node(current_node, string)
    else
      p string
    end
  end

end
