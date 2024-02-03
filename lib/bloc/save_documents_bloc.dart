import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'save_documents_event.dart';
part 'save_documents_state.dart';

class SaveDocumentsBloc extends Bloc<SaveDocumentsEvent, SaveDocumentsState> {
  SaveDocumentsBloc() : super(SaveDocumentsInitial()) {
    on<SaveDocumentsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
