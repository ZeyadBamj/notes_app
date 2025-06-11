import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'add_new_cubit_state.dart';

class AddNewCubitCubit extends Cubit<AddNewCubitState> {
  AddNewCubitCubit() : super(AddNewCubitInitial());
}
