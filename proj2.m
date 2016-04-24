# As an exemple of a people destribution we create a random matrix of 12x31 where columns are months and lines are days.
#To make this creation easier we'll admit that every month has 31 days.
a = rand(31,12) * 15000;
# Next we'll modify a few days in this matrix to simulate a week with less visitors.
  for j = 2
    for i = 14:22
      a(i,j) = a(i,j) /80;
    end
  end 

#Let's try to find the days with less than 2% of the average amoung of visitors. This are the days you could spend to repair or maintain your parc.
Value = mean(mean(a)) * 0.02
[Day,Month]= find(a < Value)

# The result of this search gives you the days you could close without disturbing 98% of the average amoung of visitors. By looking at the months you'll 
#easily find days following each other for long time reparations.

