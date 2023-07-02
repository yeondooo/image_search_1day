import 'package:flutter_test/flutter_test.dart';
import 'package:image_search_1day/data/api/pixabay_api.dart';

void main() {
  test('pixabay api test', () async {
    final api = PixabayApi();
    final dto = await api.getImages('banana');
    expect(dto.total, 1604);
  });
}
