color color1 = color(255, 0, 0); // Red
color color2 = color(0); // Black

void collisionDetection() {
  loadPixels();
  
  // Loop through all pixels to detect collision
  for (int i = 0; i < width * height; i++) {
    if (pixels[i] == color1) {
      // Check neighboring pixels to see if color2 is adjacent
      if (i + 1 < width * height && pixels[i + 1] == color2 ||
          i - 1 >= 0 && pixels[i - 1] == color2 ||
          i + width < width * height && pixels[i + width] == color2 ||
          i - width >= 0 && pixels[i - width] == color2) {
        println("Collision Detected!");
        break;
      }
    }
  }
}
