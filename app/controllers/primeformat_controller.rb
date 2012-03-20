class PrimeformatController
  
  def calculate(number)
    @number = number
    res = []
    diviseur = 2
    while (@number >1)  do   
  
      while((@number % diviseur) == 0) do
        @number = @number / diviseur
        res.push(diviseur)
      end
      diviseur = diviseur + 1
    end 
   res
  end
  
end 





