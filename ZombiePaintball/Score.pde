class Score {
  int score;
  int lastMilestone;
  int nextMilestone;
  Score() {
    score = 0;
    lastMilestone = 0;
    calcNextMilestone();
  }
  void calcScore(int zKill, int dKill) {
    score = zKill + dKill * 5;
  }
  void calcNextMilestone() {
    nextMilestone = lastMilestone + 20;
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