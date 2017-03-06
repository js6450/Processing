var cell_size = 10;

var particles = [];

function setup() {
  createCanvas(1080, 720);
  ellipseMode(CORNER);
  noStroke();
  colorMode(HSB, 100);

  for (var j = 0; j < height / cell_size; j++) {
    var p_row = [];
    for (var i = 0; i < width / cell_size; i++) {
      p_row.push(new Particle(i, j))
      p_row[i].setlife();
    }
    particles.push(p_row);
  }

  frameRate(5);

}

function draw() {
  background(0, 20);

  var changed = 0;

  for (var j = 0; j < height / cell_size; j++) {
    for (var i = 0; i < width / cell_size; i++) {
      particles[j][i].update();
      if (particles[j][i].changed) {
        changed++;
      }
      particles[j][i].display();
    }
  }

  if (changed < 10 && frameCount % 50 == 0) {
    for (var j = 0; j < height / cell_size; j++) {
      for (var i = 0; i < width / cell_size; i++) {
        particles[j][i].setlife();
      }
    }
  }

}

