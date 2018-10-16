# Write a list class. Implementation doesn't matter.
#
# list = List.new
# list << 1
# list << 5
# list << 3
# list << 4
# list << 2
# list # => #<List: 1, 5, 3, 4, 2>
#
#
# Then give it an each method that iterates over its items in the order they were inserted
# ary = []
# ff.each do |crnt|
#   ary << crnt
# end
# ary # => [1, 5, 3, 4, 2]
#
#
# Then use the Enumerable module http://ruby-doc.org/core/classes/Enumerable.html to give
# your class its methods.
# ff.max                        # => 5
# ff.min                        # => 1
# ff.select { |num| num.odd? }  # => [1, 5, 3]
class List
  include Enumerable

  attr_accessor :first, :last

  class Node
    attr_accessor :data, :link

    def initialize(data, link)
      @data = data
      @link = link
    end
  end

  def initialize(first=nil, last=nil)
    @first = first
    @last = last
  end

  def <<(element)
    node = Node.new(element, nil)
    @last.link = node if @last
    @last = node
    @first ||= @last
    self
  end

  def each(&block)
    latest = @first
    while latest
      block.call latest.data
      latest = latest.link
    end
  end
end
