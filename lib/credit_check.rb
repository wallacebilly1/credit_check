def check_if_valid(card_number)
    array = transform_to_array(card_number)
    double_array = double_every_other(array)
    array_sum = sum_digits_greater_than_9(double_array).sum
    if array_sum % 10 == 0
        "The number #{card_number} is valid!"
    else
        "The number #{card_number} is invalid!"
    end
end

def transform_to_array(card_number)
    card_number.to_i.digits.reverse
end

def double_every_other(array)
    array.each_index do |index|
        if index.even? || index.zero?
            array[index] *= 2
        end
    end
end

def sum_digits_greater_than_9(double_array)
    double_array.map do |number|
        if number > 9
            number.digits.sum
        else
            number
        end
    end
end

p check_if_valid("5541808923795240")