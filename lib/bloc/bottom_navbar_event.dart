abstract class BottomNavbarEvent {}

class TabSelectedEvent extends BottomNavbarEvent {
  final int selected_index;

  TabSelectedEvent(this.selected_index);
}
