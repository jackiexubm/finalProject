class Game {
  void restart(Score s, Wave w, Characters x, DevilWave d) {
    s.score = 0;
    w.clear();
    d.clear();
    x.reset();
  }
}