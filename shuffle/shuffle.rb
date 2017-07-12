#Fisher-Yates Shuffle ALgorithm

def shuffle(array)
  (array.length - 1).downto(0).each do |i|
    temp = rand(i + 1)
    array[i], array[temp] = array[temp], array[i]
  end
  array
end

a = [1,2,3,4,5,6,7,8,9]

distribution = Hash.new(0)
spread = Hash.new(0)
453600.times do
  shuffled = shuffle(a.dup)
  holder = distribution[shuffled] += 1
  spread[holder] += 1
  spread[holder - 1] -= 1
end
p spread.sort
