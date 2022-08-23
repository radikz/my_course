import 'package:bloc/bloc.dart';
import 'package:my_course/models/app_tab.dart';

class TabCubit extends Cubit<AppTab> {
  TabCubit() : super(AppTab.explore);

  void updateTab(AppTab tab) => emit(tab);
}
