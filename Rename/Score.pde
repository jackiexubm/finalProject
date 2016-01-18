class Score{
 int score;
 int lastMilestone;
 int nextMilestone;
 void addScore(int points){
  score = points; 
 }
 void calcNextMilestone(){
  nextMilestone = lastMilestone + 100; 
 }
 void drawScoreboard(){
   
 }
}