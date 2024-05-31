#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=freecodecamp --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "TRUNCATE TABLE teams, games;")

cat games.csv | while IFS=',' read YEAR ROUND WINNER OPPONENT WINNER_GOAL OPPONENT_GOAL

do
  WINNER_TEAMS=$($PSQL "SELECT name FROM teams WHERE name='$WINNER'")
    if [[ $WINNER != 'winner' ]] 
      then 
      if [[ -z $WINNER_TEAMS ]]
        then
        INSERT_TEAM=$($PSQL "INSERT INTO teams(name) VALUES('$WINNER')")
        if [[ $INSERT_TEAM == 'INSERT 0 1' ]]
          then 
          echo $WINNER
        fi
      fi
    fi

  OPPONENT_TEAMS=$($PSQL "SELECT name FROM teams WHERE name='$OPPONENT'")
    if [[ $OPPONENT != 'opponent' ]]
      then
      if [[ -z $OPPONENT_TEAMS ]]
        then
        INSERT_TEAM2=$($PSQL "INSERT INTO teams(name) VALUES('$OPPONENT')")
        if [[ $INSERT_TEAM2 == 'INSERT 0 1' ]]
          then
          echo $OPPONENT
        fi
      fi
    fi

  W_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
  O_TEAM_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$OPPONENT'")

  if [[ -n $W_TEAM_ID || $O_TEAM_ID ]]
    then
    if [[ $YEAR != 'year' ]]
      then
      INSERT_GAME=$($PSQL "INSERT INTO games(year, round, winner_id, opponent_id, winner_goals, opponent_goals) VALUES('$YEAR', '$ROUND', '$W_TEAM_ID', '$O_TEAM_ID', '$WINNER_GOAL', '$OPPONENT_GOAL')")
      if [[ $INSERT_GAME == 'INSERT 0 1' ]]
        then
        echo $INSERT_GAME
      fi
    fi
  fi





done
