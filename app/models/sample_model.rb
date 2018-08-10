# m = ' '
# if userWordArray.include? (m) 
#     m.ord = ' '
# end
def caesar_cipher(userWord, userShift)
    userWordArray = userWord.split("") #Makes an array of characters
    shift = userShift%26
    c = []
    userWordArray.each do |letter|
        if letter.ord == 32
            c.push(letter)
        elsif letter.ord < 122
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

#