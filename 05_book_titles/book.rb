class Book
# write your code here

    def title
        @title
    end

    def title=(title)
        arr = title.split(' ').map { |i|
        if %w(and of the over in a an).include?(i) #%w(x x) = ["x", "x"] => short for an array
            i
        else
            i.capitalize()
        end
    
    }
    arr.first.capitalize! # ! modifies arr while capitalize() doesnot
    @title = arr.join(' ')
    end

end
