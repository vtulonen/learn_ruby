#write your code here

def translate(s)
   
    v = ['a', 'e', 'i', 'o', 'u']
    arr = s.split(' ') # split given string into arrays
    nArr = []

    arr.each { |x| # loop trough each word

    c = x[/\A[bcdfghjklmnpqrstvwxyz]*/i].length #n of consonants before first vowel
    
    first = x[0]
    second = x[1]
    third = x[2]

    if v.include?(x[0]) # translate words starting with vowels
        s = x+= 'ay'
        
        #translate words starting with 3, 2 or 1 consonants + edge cases 
        elsif c == 3 || first == 's' && second == 'q' && third == 'u'
            x[0]=''
            x[0]=''
            x[0]=''
            s = x+= first+second+third + 'ay'

        elsif c == 2 || first == 'q' && second == 'u'
            x[0]=''
            x[0]=''
            s = x+= first+second + 'ay'

        else 
            x[0]=''
            s = x+=first+'ay'
    end

    nArr << s # push translated word into new array

    }
    
    return nArr.join(' ') # array to string with spaces
    
end
