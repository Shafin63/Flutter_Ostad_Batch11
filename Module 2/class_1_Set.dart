main()
{
  //set does not accept duplicate elements
  Set <String> names = {"Shafin", "Karim", "Rahim", "Jodu", "Modhu", "Shafin"};
  print("The Set is: ${names}");

  names.add("Imran"); //add single element in set
  names.add("Babu");
  names.addAll({"Fahim", "Shibly", "Babu"}); //adding multiple elements in set
  
  //replace an element in set
  names.remove("Jodu");
  names.add("Kodu");
  print("Updated Set list: ${names}");
  print(names.contains("Kodu")); //check if element exists in set
  print(names.contains("Nishat"));
  print(names.containsAll({"Kodu", "Fahim", "Shibly", "Babu"})); //check if all elements exist in set

  print(names.elementAt(0)); // check element of a set index wise
  print(names.elementAt(5));
  print(names.first); //check first element of set
  print(names.last); //check last element of set
  print(names.length); //check length of set
  print(names.isEmpty); //check if set is empty or not
  print(names.isNotEmpty); //check if set is empty or not

  //converting set into list
  var nameList = names.toList();
  print(nameList); 

  // converting set into map
  var nameMap = nameList.toSet();
  print(nameMap);

  Set <String> names2 = {"Kodu", "Fahim", "Shibly", "Babu", "Amir", "Titumir"};
  print("Intersection Value: ${names.intersection(names2)}"); //find intersection of two sets
  print("Union Value: ${names.union(names2)}"); //union of two sets 
  

  names.remove("Shafin"); //remove single element from set
  names.removeAll({"Karim", "Rahim"}); //remove multiple elements from set
  names.clear(); //clear all elements from set


  print("Updated Set list: ${names}");



}