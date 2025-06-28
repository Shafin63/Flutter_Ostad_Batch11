main ()
{
  Map <String, String> person =  { //Map <key, value>
    'name' : 'Shafin',
    'age' : '25',
    'address' : 'Chittagong',
    'experience' : '5 years',
  };
  

  print(person);
  print('What\'s your name?');
  print("My name is: ${person['name']}");
  print("What's your name?");
  print(person['age']);
  print("I have experience of ${person['experience']}");
  print("My address: ${person['address']}");
  person["address"] = "Dhaka"; //update map value
  print("My updated address: ${person["address"]}");

  person.remove("experience"); //removing a key
  print("Experience: ${person["experience"]}"); //this will print null because experience is removed from map
  print(person);
  
  print(person.containsKey("experience")); //check if key exists in map
  print(person.containsKey("name")); 
  print(person.containsValue("Shafin")); //check if value exists in map
  
  if(person.containsKey("experience")) {
    print("Yes");
  }
  else {
    print("No");
  }
  
  Map <String, String> additionalInfo = {'Sub' : 'CSE', "CGPA" : "3.5", "Session" : "Spring2023"};
  person.addAll(additionalInfo); //merging two maps into one
  print(person);
  print("The length of this map is: ${person.length}"); // length of the map
  var keyList = person.keys.toList(); //print all keys as List
  print(keyList);
  var valueList = person.values.toList();
  print(valueList);
  print(person.runtimeType);

  ///dynamic Map
  var person2 = {
    "name": "Jake",
    "age" : 40,
    "Salary" : 50.5,
    "isMarried" : true,
    };
  print(person2);
  print(person2.isEmpty);
  print(person2.isNotEmpty);
  
  person.clear(); //clear the full map of person
  print(person);

}

