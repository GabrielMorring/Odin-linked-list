require_relative "node"

class LinkedList
  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    node = Node.new(value)

    @head = node if @head.nil?
    @tail.next_node = node unless @tail.nil?
    @tail = node
  end

  def prepend(value)
    node = Node.new(value, @head)
    @head = node
    @tail = node if @tail.nil?
  end

  def head
    return @head if @head.nil?

    @head.value
  end

  def tail
    return @tail if @tail.nil?

    @tail.value
  end

  def size
    return 0 if @head.nil?

    node = @head
    count = 1
    until node.next_node.nil?
      node = node.next_node
      count += 1
    end
    count
  end

  def at(index)
    node = @head
    if index.positive?
      (1..index).each do
        node = node.next_node unless node.nil?
      end
    end
    return nil if node.nil?

    node.value
  end

  def pop
    return_value = @head.nil? ? @head : @head.value

    @head = @head.next_node

    return_value
  end

  def contains?(value, node = @head)
    return false if node.nil?
    return true if node.value == value

    contains?(value, node.next_node)
  end

  def index(value)
    return false unless contains?(value)

    node = @head
    return 0 if node.value == value

    (1..(size - 1)).each do |index|
      node = node.next_node
      return index if node.value == value
    end
  end

  def to_s
    @head.to_s
  end
end
