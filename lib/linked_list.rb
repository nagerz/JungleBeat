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

  def prepend(new_data)
    if @head.nil?
      @head = Node.new(new_data)
    else
      shifted_node = @head
      @head = Node.new(new_data)
      @head.next_node = shifted_node
    end
    p new_data
  end

  def insert(position, new_data)
    if position == 0
      prepend(new_data)
    else
      prior_node = find_node(position - 1)
      shifted_node = find_node(position)

      new_node = Node.new(new_data)
      new_node.next_node = shifted_node
      prior_node.next_node = new_node
    end
  end

  def find_node(position)
    counter = 0
    if position == 0
      @head
    else
      current_node = @head
      while counter < position
        current_node = current_node.next_node
        counter += 1
      end
      current_node
    end
  end

  def find(position)
    node = find_node(position)
    string_node(node, node.data)
  end

  ##Iteration 4 plan:
  #Find: find_node method already finds the desired node at the position requested
  #modify string_node method to be able to take an optional limit of number of elements to return

  def includes?(search)
    true if to_string.include?(search)
  end

  #Pop: find last node(node where next_node = nil). Return that node and then find the node
  #at the previosu position and make that node.data = nil
end
