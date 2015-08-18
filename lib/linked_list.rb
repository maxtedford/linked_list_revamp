require_relative 'node'

class LinkedList
attr_reader :head, :tail

  def initialize
    @head = Node.new("head", nil)
    @tail = head
  end
  
  def append(node)
    tail.next = node
    @tail = tail.next
  end
  
  def count
    count = 1
    current_node = head
    until current_node == tail
      current_node = current_node.next
      count += 1
    end
    return count
  end
end
