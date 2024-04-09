import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:bookly_app/features/home/presentation/manager/newset_books_cubit/newset_books_state.dart';


class NewSetBooksCubit extends Cubit<NewSetBooksState> {
  NewSetBooksCubit(this.homeRepo) : super(NewSetBooksInitial());

  final HomeRepo homeRepo;

  Future<void> fetchNewSetBooks() async {
    emit(NewSetBooksLoading());
    var result = await homeRepo.fetchNewSetBooks();
    result.fold((failure) {
      emit(NewSetBooksFailure(failure.errMessage));
    }, (books) {
      emit(NewSetBooksSuccess(books));
    });
  }
}