def caesar_cipher(userWord, userShift)
    userWordArray = userWord.split("") #Makes an array of characters
    shift = userShift%26
    c = []
    userWordArray.each do |letter|
        if letter.ord == 32
            c.push(letter)
        elsif (letter.ord + shift) <= 122 && (letter.ord + shift) >= 97
            b = letter.ord + shift
            c.push(b.chr)
        else
            b = letter.ord 
       
            diff= (b-122) + shift
      
            b = 96+diff
       
            c.push(b.chr)
        end
    end
    c = c.join
end


def letter_to_encrypt(userWord, userWordShift)
    userWordShift = userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift + userWordShift 
    
    v =[]
    x= 0
    userWordShiftArray = userWordShift.split("") #Array of ShiftWord
    userWordArray = userWord.split("") #Array of word
    userWordArray.each do |letter|
        shift = userWordShiftArray[x].ord - 97 
        v.push(caesar_cipher(letter, shift))
        x=x+1
    end
    v.join 
end

