#write your code here
def add(a,b)
    a + b
end

def subtract(a,b)
    a - b
end

def sum(arr)
    sum = 0
    arr.each { |i| sum += i }
    return sum
end

def multiply(*args)
    sum = 1
    args.each {|i| sum *= i}
    return sum
end