import 'package:flutter/material.dart';
import 'task1.dart';

class TaskThree extends StatelessWidget {
  const TaskThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Task 3'),
      ),
      body: ListView(
        children: [
          MyNameCard(),
          SizedBox(height: 8),
          ProductsWidget(),
          SizedBox(height: 8),
          MyGridView(),
          HorizontalList(),
          CustomDecoratedButtonsWidget(),
          SizedBox(height: 8),
          MyStackExample(),
          SizedBox(height: 8),
          MySelectors(),
          SizedBox(height: 8),
          CardWithImageWidget(title: "Don't forget to subscribe!"),
          SizedBox(height: 8),
          StyledTextWidget(),
          SizedBox(height: 20),
          Center(
            child: Text(
              "Thanks again",
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
        color: Colors.blue[100],
        elevation: 4,
        child: ListTile(
          leading: Icon(Icons.info, color: Colors.blue),
          title: Text(
            "Card with title",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("This is a subtitle with a custom font"),
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
            Text(
              "Don't but any thing!",
              style: TextStyle(
                fontSize: 20,
                color: Colors.purple,
                fontWeight: FontWeight.bold,
              ),
            ),
            Icon(Icons.mobile_friendly, color: Colors.orange, size: 40),
          ],
        ),
        SizedBox(height: 8),
        Column(
          children: [
            Text(
              "Products",
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.greenAccent,
              ),
            ),
            Text("Iphone 16"),
            Text("S24 Ultra"),
            Text("OnePlus 9"),
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
        children: List.generate(
          6,
          (index) => Container(
            decoration: BoxDecoration(
              color: Colors.purple[(index + 1) * 100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Center(child: Text("Item ${index + 1}")),
          ),
        ),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  const HorizontalList({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return Container(
            margin: EdgeInsets.all(5),
            alignment: Alignment.center,
            width: 70,
            decoration: BoxDecoration(
              color: Colors.teal[(index + 2) * 100],
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
          Container(height: 100, width: 200, color: Colors.red[300]),
          Container(height: 70, width: 130, color: Colors.blue[300]),
          Container(height: 40, width: 100, color: Colors.green[300]),
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
              Text(
                'Task is done',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Switch(value: true, onChanged: (value) {}),
              Text(
                'Open / Close',

                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
          SizedBox(height: 8),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              Text('Male', style: TextStyle(fontWeight: FontWeight.bold)),
              Radio(value: 1, groupValue: 1, onChanged: (value) {}),
              Text('Female', style: TextStyle(fontWeight: FontWeight.bold)),
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
        "Thanks For Creating This Awesome ShowCase!",
        style: TextStyle(
          color: Colors.purple,
          fontSize: 15,
          fontWeight: FontWeight.bold,
          letterSpacing: 2,
        ),
      ),
    );
  }
}

class CustomDecoratedButtonsWidget extends StatelessWidget {
  const CustomDecoratedButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(
          onPressed: () {},
          style: ElevatedButton.styleFrom(backgroundColor: Colors.green),
          child: Text(
            "Click Me",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ),
        OutlinedButton(
          onPressed: () {},
          child: Text("Cancel", style: TextStyle(color: Colors.red)),
        ),
      ],
    );
  }
}
