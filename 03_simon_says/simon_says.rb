#write your code here
def echo(str)
    str # automatically returns this. (return) in front not needed!
end

def shout(str)
    str.upcase
end

def repeat(str, n = 2)
    str = (" " + str) * n
    str[0] = ""
    return str
end

def start_of_word(str, n)
    str[0,n] #substring from start to nth 
end

def first_word(str)
    i = str.index(' ')
    str[0,i]
end

def titleize(str)
    arr = str.split(' ').map { |i|
        if %w(and of the over).include?(i)
            i
        else
            i.capitalize()
        end
    
    }
    arr.first.capitalize! # ! modifies arr while capitalize() doesnot
    return arr.join(' ')
end
