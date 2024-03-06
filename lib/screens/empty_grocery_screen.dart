import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../models/models.dart';
class EmptyGroceryScreen extends StatelessWidget {
 const EmptyGroceryScreen({super.key});
 @override
 Widget build(BuildContext context) {
 // 1
return Padding(
 padding: const EdgeInsets.all(30.0),
 // 2
 child: Center(
 // 3
 child: Column(
 mainAxisAlignment: MainAxisAlignment.center,
 children: [
// 1
Flexible(
 // 2
 child: AspectRatio(
 aspectRatio: 1 / 1,
 child: Image.asset('assets/fooderlich_assets/empty_list.png'),
 ),
),
 Text(
 'No Groceries',
 style: Theme.of(context).textTheme.headline6,
),
 const SizedBox(height: 16.0),
const Text(
 'Shopping for ingredients?\n'
 'Tap the + button to write them down!',
 textAlign: TextAlign.center,
),
 MaterialButton(
 textColor: Colors.white,
 shape: RoundedRectangleBorder(
 borderRadius: BorderRadius.circular(30.0),
 ),
 color: Colors.green,
 onPressed: () {
 Provider.of<TabManager>(context, listen: false).goToRecipes();
 },
 child: const Text('Browse Recipes'),
),
 ],
 ),
 ),
);

 }
}