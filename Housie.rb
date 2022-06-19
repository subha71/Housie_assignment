
#approach was to generate column wise numbers randomly in sorted format and removing the numbers randomly row-wise and finally printing the output
def Housie
    #no of rows and columns
    rows = 3
    columns = 9

    #declaring multi-dimensional array 
    ticket = Array.new(rows){Array.new(columns)}



    #adding unique and sorted elements in column wise
    for i in 0..8 do
        #generating random numbers using custom random method
        column_arr = random(i)
        for j in 0..2 do
            ticket[j][i] = column_arr[j]
        end
    end

    #selecting 4 nos randomly from the given list of array and replacing the same with X
    for i in 0..2 do
        resultant_row = ticket[i].sample(4)
        ticket[i] =ticket[i].map { |x| resultant_row.include?(x) ? "X" : x}
    end
  

   #Printing the final output
   for i in 0..2 do
        for j in 0..8 do
            print "#{ticket[i][j]}" + "   "
        end
        puts
    end

end

#generating random nos and assigning to a column
def random(column_no)
    if column_no == 0
        column = (1..9).to_a.sample(3).sort
    elsif column_no == 1
        column = (10..19).to_a.sample(3).sort
    elsif column_no == 2
        column = (20..29).to_a.sample(3).sort
    elsif column_no == 3
        column = (30..39).to_a.sample(3).sort
    elsif column_no == 4
        column = (40..49).to_a.sample(3).sort
    elsif column_no == 5
        column = (50..59).to_a.sample(3).sort
    elsif column_no == 6
        column = (60..69).to_a.sample(3).sort
    elsif column_no == 7
        column = (70..79).to_a.sample(3).sort
    elsif column_no == 8
        column = (80..89).to_a.sample(3).sort
    end

    return column
end

Housie()
