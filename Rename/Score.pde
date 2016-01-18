class Score{
 int score;
 int lastMilestone;
 int nextMilestone;
 Score(){
  score = 0;
  lastMilestone = 0;
  calcNextMilestone();
 }
 void addScore(int points){
  score += points; 
 }
 void calcNextMilestone(){
  nextMilestone = lastMilestone + 100; 
 }
 void drawScoreboard(){
   
 }
}