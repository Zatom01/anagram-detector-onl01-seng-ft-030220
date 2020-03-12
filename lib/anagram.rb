
class Anagram
  attr_accessor :word

  def initialize(word)
    @word =word
  end 

  def match(angaram_argu)
    letter_arr=[]
    final_sorted_word=[]
    match_arr=[]

    splitted_word=@word.chars.sort
    final_sorted_word << splitted_word.join

    # puts"#{final_sorted_word}"

    angaram_argu.each do |ele|
      letter_arr << ele.split("").sort.join
      if final_sorted_word==letter_arr
        return match_arr << ele 
      else 
        return letter_arr=[]
      end
        
    end
    
   
  end
end 