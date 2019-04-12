class LinkedList
  attr_accessor :head

  def initialize
    @head = nil
  end

  def append(new_data)
    @head = Node.new(new_data)
    p new_data
  end

  def count
    current_node = @head
    count = 0
    if current_node.nil?
      return count
    else
      count += 1
      count
    end
    p count
  end

  def to_string
    current_node = @head
    if current_node.nil?
      return nil
    else
      string = current_node.data
    end
    p string
  end
end
