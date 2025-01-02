import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marketui_app/feature/home/cubit/botton_navigation_bar_cubit/bottom_navigation_bar_state.dart';

class BottomNavigationBarCubit extends Cubit<BottomNavigationBarState> {
  BottomNavigationBarCubit() : super(IntialState());
  int currentindex = 0;
  void changecurrentindex({required int value}) {
    currentindex = value;
    emit(UpdateState());
  }
}
