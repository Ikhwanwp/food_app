import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:food_app/models/models.dart';
import 'package:food_app/services/services.dart';

part 'transaction_state.dart';

class TransactionCubit extends Cubit<TransactionState> {
  TransactionCubit() : super(TransactionInitial());

  Future<void> getTransactions() async {
    ApiReturnValue<List<Transactions>> result =
        await TransactionServices.getTransaction();

    if (result.value != null) {
      emit(TransactionLoaded(result.value!));
    } else {
      emit(TransactionLoadingFailed(result.massage!));
    }
  }

  Future<bool> submitTransaction(Transactions transactions) async {
    ApiReturnValue<Transactions> result =
        await TransactionServices.submitTransaction(transactions);

    if (result.value != null) {
      emit(TransactionLoaded(
          (state as TransactionLoaded).transactions + [result.value!]));
      return true;
    } else {
      return false;
    }
  }
}
