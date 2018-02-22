def fizz_buzz(num)
    if num % 15 == 0
        'fizz buzz'
    elsif num % 3 == 0
        'fizz'
    elsif num % 5 == 0
        'buzz'
    else
        num
    end
end
