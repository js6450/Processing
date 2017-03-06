"use strict";

class Particle {
  constructor(x, y) {
    this.x = x;
    this.y = y;
    this.alive;
    this.changed;
    this.dia = cell_size - 2;

    this.colorMax = 100;

    if (this.x == 0) {
      this.x_start = 0;
    } else {
      this.x_start = -1;
    }
    if (this.y == 0) {
      this.y_start = 0;
    } else {
      this.y_start = -1;
    }
    if (this.x == width / cell_size - 1) {
      this.x_end = 1;
    } else {
      this.x_end = 2;
    }
    if (this.y == height / cell_size - 1) {
      this.y_end = 1;
    } else {
      this.y_end = 2;
    }
  }

  update() {
    var neighbor = 0;

    for (var j = this.y_start; j < this.y_end; j++) {
      for (var i = this.x_start; i < this.x_end; i++) {
        if (i != j) {
          var y = this.y + j;
          var x = this.x + i;
          // console.log("x:" + x + " y:" + y + " - " + particles[y][x].alive);
          if (particles[y][x].alive) {
            neighbor++;
          }
        }
      }
    }

    if (this.alive) {
      if (neighbor < 2 || neighbor > 3) {
        this.alive = false;
        this.changed = true;
      }
      if (this.colorMax > 0) {
        this.colorMax -= 2;
      }

    } else {
      if (neighbor === 3) {
        this.alive = true;
        this.colorMax = 100;
        this.changed = true;
      }
    }

    this.changed = false;
  }

  setlife() {
    var rand_int = random(1, 101);
    this.alive = false;
    if (rand_int + noise(this.x, this.y) < random(15, 45) - noise(this.x, this.y) ) {
      this.alive = true;
    }
    this.colorMax = 100;
  }

  display() {
    if (this.alive) {
      fill(this.colorMax, this.colorMax, 100, 75);
      ellipse(this.x * cell_size, this.y * cell_size, this.dia, this.dia);
    }
  }
}