class LinkedListNode
  attr_accessor :value, :next_node
 
  def initialize(value, next_node=nil)
    @value = value
    @next_node = next_node
  end

end

class Stack
    attr_reader :top
    
    def initialize
        @top = nil
    end

    # Push a value onto the stack
    def push(value)
        # IMPLEMENT ME!
        top = LinkedListNode.new(value, @top)
        @top = top
    end

    # Pop an item off the stack.  
    # Remove the last item that was pushed onto the
    # stack and return the value to the user
    def pop
        # I RETURN A VALUE
        unless @top.nil?
            top_value = @top.value
            @top = @top.next_node 
        end
        return top_value
    end

end

def print_values(list_node)
  if list_node
    print "#{list_node.value} --> "
    print_values(list_node.next_node)
  else      
    print "nil\n"
    return
  end
end

def reverse_list(list)
    # ADD CODE HERE
    reversed_list = Stack.new

    while list
        # ADD CODE HERE
        reversed_list.push(list.value)
        list = list.next_node
    end
    # ADD CODE HERE
    return reversed_list.top
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "-------------"

revlist = reverse_list(node3)

print_values(revlist)

# Output:
# 12 --> 99 --> 37 --> nil
# -------------
# 37 --> 99 --> 12 --> nil