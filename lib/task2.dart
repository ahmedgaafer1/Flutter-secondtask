import 'package:flutter/material.dart';
import 'task1.dart';

class TaskTwo extends StatelessWidget {
  const TaskTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Task 2'),
      ),
      body: ListView(
        children: [
          MyNameCard(),
          SizedBox(height: 8),
          ProductsWidget(),
          SizedBox(height: 8),
          MyGridView(),
          HorizontalList(),
          CustomButtonsWidget(),
          SizedBox(height: 8),
          MyStackExample(),
          SizedBox(height: 8),
          MySelectors(),
          SizedBox(height: 8),
          CardWithImageWidget(title: "Card with image & Shape"),
          SizedBox(height: 8),
          StyledTextWidget(),
          SizedBox(height: 20),
          Center(
            child: Text(
              "End of List",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 8),
        ],
      ),
    );
  }
}

class MyNameCard extends StatelessWidget {
  const MyNameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Card(
        elevation: 4,
        child: ListTile(
          leading: Icon(Icons.info, color: Colors.blue),
          title: Text("My Name"),
          subtitle: Text("My Address"),
        ),
      ),
    );
  }
}

class ProductsWidget extends StatelessWidget {
  const ProductsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Icon(Icons.call, color: Colors.orange, size: 40),
            Text("Products", style: TextStyle(fontSize: 20)),
            Icon(Icons.mobile_friendly, color: Colors.orange, size: 40),
          ],
        ),
        SizedBox(height: 8),
        Column(
          children: [
            Text("Mobil Phones", style: TextStyle(fontSize: 18)),
            Text("Iphone 16"),
            Text("Samsung S24 Ultra"),
            Text("OnePlus 10"),
          ],
        ),
        SizedBox(height: 8),
        Divider(thickness: 1, color: Colors.black),
      ],
    );
  }
}

class MyGridView extends StatelessWidget {
  const MyGridView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 200,
      child: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        padding: EdgeInsets.symmetric(horizontal: 10),
        children: [
          Container(
            color: Colors.blue[100],
            child: Center(child: Text("Item 1")),
          ),
          Container(
            color: Colors.blue[200],
            child: Center(child: Text("Item 2")),
          ),
          Container(
            color: Colors.blue[300],
            child: Center(child: Text("Item 3")),
          ),
          Container(
            color: Colors.blue[400],
            child: Center(child: Text("Item 4")),
          ),
        ],
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    // horizontal list with 5 items each item is a grade of indigo color

    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            width: 60,
            decoration: BoxDecoration(
              color: Colors.teal[(index + 1) * 100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Text("List ${index + 1}"),
          );
        },
      ),
    );
  }
}

class MyStackExample extends StatelessWidget {
  const MyStackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: Alignment.center,
        children: [
          Container(height: 100, width: 200, color: Colors.red),
          Container(height: 70, width: 130, color: Colors.blue),
          Container(height: 40, width: 100, color: Colors.green),
        ],
      ),
    );
  }
}

class MySelectors extends StatelessWidget {
  const MySelectors({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Checkbox(value: true, onChanged: (value) {}),
              Text('CheckBox'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Switch(value: true, onChanged: (value) {}),
              Text('Switch'),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              Text('Radio'),
            ],
          ),
        ],
      ),
    );
  }
}

class StyledTextWidget extends StatelessWidget {
  const StyledTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Styled Text Example",
        style: TextStyle(
          color: Colors.purple,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
