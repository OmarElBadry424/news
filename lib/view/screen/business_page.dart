import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_52/news_cubit/news_cubit.dart';
import 'package:news_api_52/news_cubit/news_state.dart';

import 'builder_item.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return ListItem(NewsCubit
            .get(context)
            .businessList);
      },
    );
  }
}
