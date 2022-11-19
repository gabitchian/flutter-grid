extension ListExtension<T> on List<T> {
  List<List<T>> breakEvery(int numberOfElements) {
    List<List<T>> mappedElements = [];

    int rowsLength = (length / numberOfElements).ceil();

    for (int i = 0; i < rowsLength; i++) {
      int finalElementPosition =
          length >= numberOfElements ? numberOfElements : length;
      List<T> aux = getRange(0, finalElementPosition).toList();
      mappedElements.add(aux);
      removeRange(0, finalElementPosition);
    }

    return mappedElements;
  }

  List<List<T>> breakEvery_foreach(int numberOfElements) {
    List<List<T>> mappedElements = [];

    int rowsLength = (length / numberOfElements).ceil();
    List<int> rows = List.generate(rowsLength, (index) => index + 1);

    rows.forEach((element) {
      int finalElementPosition =
          length >= numberOfElements ? numberOfElements : length;
      List<T> aux = getRange(0, finalElementPosition).toList();
      mappedElements.add(aux);
      removeRange(0, finalElementPosition);
    });

    return mappedElements;
  }

  List<List<T>> breakEvery_initial(int numberOfElements) {
    List<T> temp = [];
    List<List<T>> mappedElements = [];

    for (int i = 0; i < length; i++) {
      if (temp.length < numberOfElements) {
        temp.add(this[i]);
      }

      if ((temp.length == numberOfElements) || (i == (length - 1))) {
        List<T> aux = List.of(temp);
        mappedElements.add(aux);
        temp.clear();
      }
      // print(list[i]);
    }
    return mappedElements;
  }
}
