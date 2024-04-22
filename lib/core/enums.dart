enum LoadingState {
  loading,
  loaded,
  error;

  bool get isLoaded =>
      this == LoadingState.loaded;

}
enum OperationType {
  add,
  edit;

  bool get isEdit => this == OperationType.edit;
}
enum PopupType { menu, dialog, modalBottomSheet }
