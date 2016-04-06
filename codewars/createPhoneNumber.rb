def createPhoneNumber(numbers)

  first_group = numbers.take(3).join
  second_group = numbers[3..5].join
  third_group = numbers.drop(6).join
  
    
    
  puts "(#{first_group}) #{second_group}-#{third_group}"
  
  end
  

createPhoneNumber([1, 2, 3, 4, 5, 6, 7, 8, 9, 0])