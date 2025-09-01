import 'package:flutter/material.dart';

class MoneyManagement extends StatefulWidget{
  const MoneyManagement({super.key});

  @override
  State<MoneyManagement> createState() => _MoneyManagementState();
}

class _MoneyManagementState extends State<MoneyManagement> with SingleTickerProviderStateMixin{
  late TabController _tabController;

  List<Map<String, dynamic>> _expense = [];
  List<Map<String, dynamic>> _earning = [];

  void addEntry(String title, double amount, DateTime date, bool isEarning) {
    setState(() {
      if (isEarning){
        _earning.add({
          "title" : title,
          "amount:" : amount,
          "DateTime" : date});
      }
      else {
        _expense.add({
          "title" : title,
          "amount:" : amount,
          "DateTime" : date});
      }
    });
  }
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _showFABoptions(BuildContext) {
    showModalBottomSheet(context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  _showForm(isEarning: true);}, child: Text("Add Earning")),
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                ),
                onPressed: () {
                  Navigator.pop(context);
                  _showForm(isEarning: false);}, child: Text("Add Expense")),
          ],
        ),
      );
    });
  }
  void _showForm ({required bool isEarning}) {
    TextEditingController titleController = TextEditingController();
    TextEditingController amountController = TextEditingController();
    DateTime entryDate = DateTime.now();
    showModalBottomSheet(context: context, builder: (context) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Text(
              isEarning ? "Add Earning" : "Add Expense",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: titleController,
              decoration: InputDecoration(
                labelText: "Title",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 20,),
            TextField(
              controller: amountController,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                labelText: "Amount",
                border: OutlineInputBorder(),
              ),
            ),

            SizedBox(height: 20,),
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: isEarning ? Colors.green : Colors.red,
                ),
                onPressed: (){
                  if (titleController.text.isNotEmpty && amountController.text.isNotEmpty) {
                    addEntry(titleController.text, amountController.text as double, entryDate, isEarning);
                    Navigator.pop(context);
                  }

                }, child: Text(isEarning ? "Add Earning" : "Add Expense"),),
            ),
          ],
        ),
      );
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text("Money Management"),
        centerTitle: true,
        bottom: TabBar (
          controller: _tabController,
          tabs: [
            Tab(text: "Earning", icon: Icon(Icons.arrow_downward_outlined),),
            Tab(text: "Expense", icon: Icon(Icons.arrow_upward_outlined),),
          ],
        )
      ),
      body: Column(
        children: [
          Row(
            children: [
              _buildSummaryCard(title: 'Earning', money: 2500, color: Colors.green),
              _buildSummaryCard(title: 'Expense', money: 200, color: Colors.red),
              _buildSummaryCard(title: 'Balance', money: 2300, color: Colors.blue),
            ],
          ),
          Expanded(
            child: TabBarView(
                controller: _tabController,
                children: [
              _buildList(_earning, Colors.green, true),
              _buildList(_expense, Colors.red, false),
            ]),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => _showFABoptions(context),
        child: Icon(Icons.add),),
    );
  }
}

Widget _buildSummaryCard({required String title, required double money, required color}) {
  return Expanded(
    child: Card(
        color: color,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              Text(title, style: TextStyle(
                fontSize: 26,
                // fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),

              Text(money.toString(), style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),),

            ],
          ),
        )

    ),
  );
}

Widget _buildList (List<Map<String, dynamic>> items, Color colors, bool isEarning) {
  return ListView.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return Card(
          child: ListTile(
            leading: CircleAvatar(
              backgroundColor: colors.withOpacity(0.2),
              child: Icon(isEarning ? Icons.arrow_downward_outlined : Icons
                  .arrow_downward_outlined),
            ),
            title: Text(items[index]["Title"]),
            subtitle: Text(items[index]["date"]),
            trailing: Text(items[index]["amount"]),
          ),
        );
      });
}