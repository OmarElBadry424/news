import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_api_52/news_cubit/news_state.dart';

import '../../news_cubit/news_cubit.dart';
import 'builder_item.dart';

class HealthPage extends StatelessWidget {
  const HealthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewsCubit, NewsState>(
      builder: (context, state) {
        return ListItem(NewsCubit
            .get(context)
            .healthList);
      },
    );
  }
}
