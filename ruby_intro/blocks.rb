# Ruby blocks are anonymous functions that can be passed to methods
# Ruby blocks are the equivalent of JavaScript callbacks

# 2 possible syntax: (1) do end (2) {}

  (1..100).each do |n|
    puts n
  end

# or

(1..100).each {|n| puts n} 

# Implicit block => yield keyword

# Ex.
 
def dozens(v) 
  dozensArr = []
  1.upto(v) do |n|
    dozensArr.push yield n
  end
  dozensArr
end

dozens(4) {|n| n * 12}

# Same with explicit block

def dozens(v, &block) 
  dozensArr = []
  1.upto(v) do |n|
    dozensArr.push block.call n
  end
  dozensArr
end