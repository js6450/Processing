int grid_size;
int grid_num;
int circle_size;
int padding;

void setup() {

  size(600, 600);
  background(0);
  ellipseMode(CENTER);
  grid_num = 8;
  grid_size = width / (grid_num);
  padding = 10;
  circle_size = grid_size - 2 * padding;
}

void draw() {
  background(0);

  for (int i = -5; i < grid_num + 10; i++) {
    for (int j = -5; j < grid_num + 10; j++) {
      int x_coord = (grid_size * i) + circle_size / 2 + padding;
      int y_coord = (grid_size * j) + circle_size / 2 + padding;
      pushMatrix();
      fill(255);
      translate(x_coord, y_coord);
      rotate(frameCount * 0.05);
      arc(grid_size * i / 2, grid_size * j / 2, grid_size - 20, grid_size - 20, 0, PI + HALF_PI, PIE);
      popMatrix();
    }
  }
}