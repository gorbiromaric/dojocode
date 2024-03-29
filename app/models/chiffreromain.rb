class Chiffreromain
 
  def decomposition(number)
    @chiffre = number
    decomposition = []
    valeur=[1000,900,500,400,100,90,40,10,9,5,4,1]
    valeur.each{|value|
      resul = @chiffre / value
      decomposition.push(resul.to_i)
      @chiffre = @chiffre % value      
    }
    return decomposition       
  end
  
  def lechiffreromain(number)
    @lechiffre = number
    reference = ['M','CM','D','CD','C','XC','XL','X','IX','V','IV','I']
    resultat=[]
    decompo = self.decomposition(@lechiffre)
    compteur=0
    decompo.each do |valeur|
      if(valeur > 0)       
        valeur.times do
          resultat.push(reference[compteur]) 
        end
      end
      compteur = compteur + 1
    end 
    affichage=resultat.join
    return affichage
  end
  
  
end 





