class Game {
  void restart(Score s, Wave w, Characters x) {
    s.score = 0;
    w.clear();
    x.reset();
  }
}