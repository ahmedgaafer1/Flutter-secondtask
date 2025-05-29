import 'package:flutter/material.dart';

class TaskOne extends StatelessWidget {
  const TaskOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[300],
        title: const Text('Task 1'),
        centerTitle: true,
      ),
      body: TaskOneHomeScreen(),
    );
  }
}

class TaskOneHomeScreen extends StatelessWidget {
  const TaskOneHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          Text(
            "Welcome to Task 1",
            style: TextStyle(
              fontSize: 18,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          UserProfileWidget(),
          SizedBox(height: 10),
          CardWithImageWidget(title: "Beautiful card with image"),
          SizedBox(height: 10),
          TextTitleWidget(title: "Controls"),
          SizedBox(height: 10),
          CustomButtonsWidget(),
          SizedBox(height: 10),
          TextTitleWidget(title: "Selections"),
          SizedBox(height: 10),
          CustomSelectionsWidget(),
          TextTitleWidget(title: "Stack Example"),
          SizedBox(height: 10),
          StackExample(),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}

class TextTitleWidget extends StatelessWidget {
  const TextTitleWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
    );
  }
}

class UserProfileWidget extends StatelessWidget {
  const UserProfileWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: ListTile(
        leading: Icon(Icons.person, color: Colors.blue),
        title: Text("User Profile"),
        subtitle: Text("Manage your profile settings"),
        trailing: Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

class CardWithImageWidget extends StatelessWidget {
  const CardWithImageWidget({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              fit: BoxFit.cover,
              "https://images.unsplash.com/photo-1748392242228-fe7ebd0b8a86?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.1.0&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
              errorBuilder: (context, error, stackTrace) {
                if (error is Exception) {
                  return Text("Image not found");
                }
                return CircularProgressIndicator();
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Text(
              title,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}

class CustomButtonsWidget extends StatelessWidget {
  const CustomButtonsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        ElevatedButton(onPressed: () {}, child: Text("Elevated Button")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined Button")),
      ],
    );
  }
}

class CustomSelectionsWidget extends StatelessWidget {
  const CustomSelectionsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Switch(value: true, onChanged: (value) {}),
            Text('Enable Notifications'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Checkbox(value: true, onChanged: (value) {}),
            Text('Accept Terms'),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Radio(value: 1, groupValue: 1, onChanged: (value) {}),
            Text('Male'),
            Radio(value: 0, groupValue: 1, onChanged: (value) {}),
            Text('Female'),
          ],
        ),
      ],
    );
  }
}

class StackExample extends StatelessWidget {
  const StackExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(height: 100, width: double.infinity, color: Colors.blue),
        Container(
          height: 60,
          width: 60,
          color: Colors.red,
          margin: EdgeInsets.all(20),
        ),
      ],
    );
  }
}
