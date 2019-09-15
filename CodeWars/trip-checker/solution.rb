class Solution

  def initialize
    @links = {
      'ADL': ['MEL'],
      'MEL': ['ADL', 'SYD'],
      'SYD': ['BRI']
    }
  end

  def possible?(start, target, visited=[])
    branches = @links[start]
    return false if branches.nil?

    visited << start
    return true if branches.include?(target)

    branches.each do |branch|
      if !visted.include?(branch)
        result = possible?(branch, target, visited)

        if result.class != Array
          return result
        end
      end
    end
  end

end
