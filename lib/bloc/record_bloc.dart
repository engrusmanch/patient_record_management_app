import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'record_event.dart';
part 'record_state.dart';

class RecordBloc extends Bloc<RecordEvent, RecordState> {
  RecordBloc() : super(RecordInitial()) {
    on<RecordEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
