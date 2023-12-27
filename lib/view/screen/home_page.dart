import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_52/news_cubit/news_cubit.dart';
import 'package:news_api_52/news_cubit/news_state.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
   builder: (context, state) {
    return Scaffold(
      appBar: AppBar(
        title: Text(NewsCubit.get(context).title[NewsCubit.get(context).currentIndex]),
      ),
      body: NewsCubit.get(context).screens[NewsCubit.get(context).currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: NewsCubit.get(context).currentIndex,
        onTap: (index){
          NewsCubit.get(context).changeNavBar(index);
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.business), label: "Business"),
          BottomNavigationBarItem(icon: Icon(Icons.sports), label: "sport"),
          BottomNavigationBarItem(icon: Icon(Icons.health_and_safety), label: "health"),

        ],
      ),
    );
  },
);
  }
}
