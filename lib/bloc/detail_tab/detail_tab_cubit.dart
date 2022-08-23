import 'package:bloc/bloc.dart';

class DetailTabCubit extends Cubit<int> {
  DetailTabCubit() : super(0);

  void updateTab(int tab) => emit(tab);
}
