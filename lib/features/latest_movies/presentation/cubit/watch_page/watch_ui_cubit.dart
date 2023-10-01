import 'package:bloc/bloc.dart';



class WatchUiCubit extends Cubit<int> {
  WatchUiCubit() : super(0);


  void searchButtonClick(){
    emit(1);
  }

  void searchButtonClose(){
    emit(0);
  }
  void searchQueryListener(){
    emit(2);
  }

}
