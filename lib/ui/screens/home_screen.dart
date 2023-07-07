import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pingpong/bloc/bottom_navbar_bloc.dart';
import 'package:pingpong/bloc/bottom_navbar_event.dart';
import 'package:pingpong/ui/widgets/navbar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<BottomNavbarBloc, int>(
        builder: (context, selected_index) {
          return BuildContent(selected_index);
        },
      ),
      bottomNavigationBar: BlocBuilder<BottomNavbarBloc, int>(
        builder: (context, selected_index) {
          return BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            currentIndex: selected_index,
            elevation: 0,
            onTap: (index) {
              BlocProvider.of<BottomNavbarBloc>(context)
                  .add(TabSelectedEvent(index));
            },
            unselectedItemColor: const Color.fromARGB(255, 181, 137, 199),
            selectedItemColor: Colors.black,
            backgroundColor: Colors.white,
            showUnselectedLabels: false,
            showSelectedLabels: false,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.event_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.emoji_events_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.notifications_none_outlined),
                label: '',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_rounded),
                label: '',
              ),
            ],
          );
        },
      ),
    );
  }
}
