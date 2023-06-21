import 'dart:async';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'bottom_navbar_event.dart';

class BottomNavbarBloc extends Bloc<BottomNavbarEvent, int> {
  BottomNavbarBloc() : super(0) {
    on<TabSelectedEvent>((event, emit) {
      emit(event.selected_index);
    });
  }
  Stream<int> mapEventToState(BottomNavbarEvent event) async* {
    if (event is TabSelectedEvent) {
      yield event.selected_index;
    }
  }
}
