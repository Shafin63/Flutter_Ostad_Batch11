import 'dart:io';

main ()
{
  int ? amount;
  print("Enter How much money you have: ");
  amount = int.tryParse(stdin.readLineSync()!); //convert string to int
  /*
  if (amount! < 50)
    {
      print("Let's Take Rickshaw");
    }
  else
    {
      print("I'll take a bike");
    } */
  if (amount != null)
    {
      if(amount < 100){
        print("Street Food");
      }
      else if (amount > 500)
      {
        print("PizzaBurg");
      }
      else
      {
        print("Eat at home!");
      }
    }
  else
    {
      print("Please enter a valid integer!");
    }

  // nested if-statements
  int ? age;

  print("Enter Your Age: ");
  age = int.tryParse(stdin.readLineSync()!);
  if (age != null)
    {
      if (age >= 18)
        {
          print("Select Your Gender: ");
          print("1. Male");
          print("2. Female");
          int ? genderInput;
          genderInput = int.tryParse(stdin.readLineSync()!);
          if(genderInput != null && (genderInput == 1 || genderInput == 2))
            {
              if (genderInput == 1)
                {
                  print("Take your seat in the front row man!");
                }
              else
                {
                  print("Take your seat in the last row woman!");
                }
            }
          else
            {
              print("Enter a valid Gender Input!");
            }
        }
      else
        {
          print("Don't come here again before you are 18!");
        }
    }
  else
    {
      print("Enter a Valid Integer Number as AGE!");
    }

} //main function

