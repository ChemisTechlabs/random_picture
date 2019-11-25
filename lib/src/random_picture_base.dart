import 'dart:math';
import 'package:image/image.dart';

class RandomPicture {
  Image _image;
  final int width, height;

  RandomPicture(int width, int height)
      : _image = Image(width, height),
        width = width,
        height = height {
    randomize();
  }

  void _generateNoise() {
    var red = Random();
    var green = Random();
    var blue = Random();
    for (var i = 0; i < height; i++) {
      for (var j = 0; j < width; j++) {
        drawPixel(
            _image,
            j,
            i,
            Color.fromRgb(
                red.nextInt(255), green.nextInt(255), blue.nextInt(255)));
      }
    }
  }

  void randomize() {
    _generateNoise();
  }

  List<int> toPng({int level = 6}) => encodePng(_image, level: level);

  List<int> toJpg({int quality = 100}) => encodeJpg(_image, quality: quality);
}
