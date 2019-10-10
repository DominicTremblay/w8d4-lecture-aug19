# Ruby iterators

# Applies to Ranges, Arrays, Hashes

## upto/downto

  1.upto(100) do |n|
    puts n
  end

## times

  100.times do |n|
    puts n
  end

## .each

### range
(1..100).each do |n|
	puts n
end

#### with step

(0..100).step(10) do |n|
	puts n
end

### iterating with arrays

scrabble_words = ["QUARTZY", "OXAZEPAM", "QUIZZIFY", "OXYPHENBUTAZONE", "QUIXOTRY"]

scrabble_words.each_with_index do |word, index|
	puts "Word ##{index+1}: #{word} Length: #{word.length}"
end
