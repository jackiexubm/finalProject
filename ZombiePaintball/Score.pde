class Score {
  int score;
  int lastMilestone;
  int nextMilestone;
  Score() {
    score = 0;
    lastMilestone = 0;
    calcNextMilestone();
  }
  void addScore(int points) {
    score += points;
  }
  void calcNextMilestone() {
    nextMilestone = lastMilestone + 10;
  }
  boolean checkMilestone() {
    if (score >= nextMilestone) {
      lastMilestone = nextMilestone;
      calcNextMilestone();
      return true;
    }
    return false;
  }
  void drawScoreboard() {
  }
}