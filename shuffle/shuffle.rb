#Fisher-Yates Shuffle ALgorithm

def shuffle(array)
  (array.length - 1).downto(0) do |i|
    temp = rand(i + 1)
    array[temp], array[i] = array[i], array[temp]
  end
  array
end

a = [1,2,3,4,5,6,7,8,9]

distribution = Hash.new(0)
spread = Hash.new(0)
2000.times do
  shuffled = shuffle(a.dup)
  distribution[shuffled] += 1

end
distribution.values.uniq
