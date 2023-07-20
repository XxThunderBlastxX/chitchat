import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ChitChat 💬'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 1.sw > 1.sh ? 26.sp : 86.sp,
        ),
        backgroundColor: Colors.blue,
      ),
      body: Container(
        padding: const EdgeInsets.all(18.0),
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'Lets\' start Chitchat!!!',
              style: TextStyle(
                fontSize: 1.sw > 1.sh ? 32.sp : 92.sp,
              ),
            ),
            12.verticalSpace,
            SizedBox(
              width: 0.6.sw,
              child: TextField(
                decoration: InputDecoration(
                  labelText: 'Enter Code',
                  border: OutlineInputBorder(
                    borderSide: const BorderSide(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(16),
                  ),
                ),
              ),
            ),
            12.verticalSpace,
            ElevatedButton(
              onPressed: () {},
              child: const Text('Join Now'),
            ),
            18.verticalSpace,
            ElevatedButton(
              onPressed: () {},
              child: const Text('Create New Chitchat'),
            ),
          ],
        ),
      ),
    );
  }
}
