import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../data/repositories/ride/ride_repo.dart';
import '../../states/ride_preference_state.dart';
import 'view_model/rides_selection_view_model.dart';
import 'widgets/rides_selection_content.dart';

///
///  The Ride Selection screen allows user to select a ride, once ride preferences have been defined.
///  The screen also allow user to:
///   -  re-define the ride preferences
///   -  activate some filters.
///
class RidesSelectionScreen extends StatelessWidget {
  const RidesSelectionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RidesSelectionViewModel(
        ridePreferencesState: context.read<RidePreferenceState>(),
        rideRepo: context.read<RideRepo>(),
      ),
      child: Consumer<RidesSelectionViewModel>(
        builder: (context, viewModel, child) => RidesSelectionContent(viewModel: viewModel),
      ),
    );
  }
}
