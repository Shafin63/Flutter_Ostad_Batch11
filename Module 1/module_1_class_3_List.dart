main()
{
  List <int> numbers = [10,20,30,40,50];
  print("Your List of numbers is: ${numbers}");
  numbers.add(60); //adding an element in the list
  print("Your List of numbers is: ${numbers}");
  numbers.addAll([90, 80, 100, 88]); //adding multiple elements in the list
  print("Your List of numbers is: ${numbers}");
  numbers.insert(3, 31); //inserting an element at a specific position in the list
  print("Your List of numbers is: ${numbers}");
  numbers.insertAll(2, [2,3,4,5]); //insert a list of elements in a position
  print("New added list: ${numbers}");
  print("The number at index 5 is: ${numbers[5]}"); //printing the element at index 5
  numbers[5] = 31; // updating the element at index 5
  print(numbers);
  numbers.sort(); //sorting the list in ascending order
  print("The sorted List: ${numbers}");
  
  // Reverse the sorted list
  numbers = numbers.reversed.toList();
  print("The reversed List: ${numbers}");
  
  numbers.removeAt(3); // remove the element at index 3
  print("New removed List: ${numbers}");
  numbers.remove(2); //remove a specific element
  print(numbers);
  print("The size of the List is: ${numbers.length}");
  print(numbers.runtimeType);

  /// Dynamic List
  List dynamicList= [43, 'name', 45.5, true]; //not declaring any type
  print(dynamicList.runtimeType);
  
  ///Fixed List
  List <int> fixedList = List <int>.filled(3,1); // filled(length, fillValue if there is no value entered)
  fixedList [0] = 1;
  fixedList [1] = 5;
  fixedList [2] = 7;
  print(fixedList);

  /*
  //same things but for strings
  List <String> names = ['Shafin', 'Jimmy', 'Tim', 'Tom'];
  print("Your List  of names is: ${names}");
  names.add('Anowar');
  print("Your List  of names is: ${names}");
  names.addAll(['Sk', 'Sakib', 'Rafi']);
  print("Your List  of names is: ${names}");
  names.insert(0, 'added'); //inserting an element at index 0
  print("Your List of names is: ${names}");
  names.removeAt(4);
  print("Your List  of names is: ${names}"); 
  names.sort(); //sorting the list in ascending order
  print("The sorted List of names: ${names}");
  print(names.runtimeType); */

  
}