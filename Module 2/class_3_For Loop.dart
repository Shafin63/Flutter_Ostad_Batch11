main ()
{
  for(int i=1; i<=10; i++)
  {
    print("Bangladesh $i");
  }

  for (int i =1; i<=20; i++)
  {
    print("12 x $i = ${12*i}");
  }

  List <String> students = ["Rahim", "Karim", "Jodu", "Modhu"];
  for(int index =0; index<students.length; index++)
    {
      print("${students[index]} has arrived in the school!");
    }

  List <String> gpNumbers = ["01758958", "01765656", "017515616", "1458558", "845785"];
  for (int i=0; i<gpNumbers.length; i++) //for (initialize, condition, increment)
    {
      print("আজ ২ জিবি ৬৫ টাকা মেয়াদ ৭ দিন - Only for ${gpNumbers[i]}.");
    }

  for (var number in gpNumbers)
    {
      print("Only for $number: আজ ২ জিবি ৬৫ টাকা মেয়াদ ৭ দিন");
    }

  var orderList =
    [
      {"name": "Shafin", "amount": 500, "address":"Ctg"},
      {"name": "Rahim", "amount": 700, "address":"Dhaka"},
      {"name": "Karim", "amount": 300, "address":"Barishal"},
  ];
  int totalOrderAmount = 0;
  for (var order in orderList)
    {
      totalOrderAmount+= order['amount'] as int;
      print("Order amount: ${order['amount']}");
    }
  print("Today's Total Amount is: $totalOrderAmount");

} // main function