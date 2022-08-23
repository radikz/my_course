import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

class MyCourseTabCubit extends Cubit<int> {
  MyCourseTabCubit() : super(0);

  void updateTab(int tab) => emit(tab);
}
