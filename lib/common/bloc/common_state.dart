sealed class CommonState {}

class CommonInitialState extends CommonState {}

class CommonLoadingState extends CommonState {}

class CommonErrorState extends CommonState {}

class CommonSuccessState<T> extends CommonState {
  final T items;

  CommonSuccessState({required this.items});
}
