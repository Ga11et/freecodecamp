#! /bin/bash

if [[ $1 == "test" ]]
then
  PSQL="psql --username=postgres --dbname=worldcuptest -t --no-align -c"
else
  PSQL="psql --username=postgres --dbname=worldcup -t --no-align -c"
fi

# Do not change code above this line. Use the PSQL variable above to query your database.

echo $($PSQL "truncate table games, teams")

cat games.csv | while IFS="," read YEAR ROUND WINNER OPP WIN_GOALS OPP_GOALS
do
  if [[ $YEAR != year ]]
  then
    # Find or create winner id
    WIN_ID=$($PSQL "SELECT team_id FROM teams WHERE name='$WINNER'")
    if [[ -z $WIN_ID ]]
    then
      INSERT_WIN=$($PSQL "insert into teams (name) values ('$WINNER')")
      if [[ $INSERT_WIN == 'INSERT 0 1' ]]
      then
        echo "$WINNER team was inserted in table Teams"
        WIN_ID=$($PSQL "select team_id from teams where name='$WINNER'")
      fi
    fi
    # Find or create opponent id
    OPP_ID=$($PSQL "select team_id from teams where name='$OPP'")
    if [[ -z $OPP_ID ]]
    then
      INSERT_OPP=$($PSQL "insert into teams (name) values ('$OPP')")
      if [[ $INSERT_OPP == 'INSERT 0 1' ]]
      then
        echo "$OPP team was inserted in table Teams"
        OPP_ID=$($PSQL "select team_id from teams where name='$OPP'")
      fi
    fi
    # Inserting game
    if [[ $WIN_ID && $OPP_ID ]]
    then
      INSERT_GAME=$($PSQL "insert into games (year, winner_id, opponent_id, winner_goals, opponent_goals, round) values ($YEAR, $WIN_ID, $OPP_ID, $WIN_GOALS, $OPP_GOALS, '$ROUND')")
      if [[ $INSERT_GAME == 'INSERT 0 1' ]]
      then
        echo "Game between $WINNER and $OPP in $YEAR was added"
      fi
    fi
  fi
done