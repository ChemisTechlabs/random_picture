import 'dart:io';
import 'package:random_picture/random_picture.dart';

main() {
  var image=RandomPicture(200,200);
  
  File('random_picture.png').writeAsBytesSync(image.toPng());
  File('random_picture.jpg').writeAsBytesSync(image.toPng());
}
