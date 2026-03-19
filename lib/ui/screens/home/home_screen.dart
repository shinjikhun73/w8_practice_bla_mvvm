import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'view_model/home_view_model.dart';
import '../../states/ride_preference_state.dart';
import 'widgets/home_content.dart';

///
/// This screen allows user to:
/// - Enter his/her ride preference and launch a search on it
/// - Or select a last entered ride preferences and launch a search on it
///
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomeViewModel(
        ridePreferencesState: context.read<RidePreferenceState>(),
      ),
      child: Consumer<HomeViewModel>(
        builder: (context, viewModel, child) => HomeContent(viewModel: viewModel),
      ),
    );
  }
}
