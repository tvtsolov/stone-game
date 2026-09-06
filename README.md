# Go
This is my attempt to code Go for GameMaker. The language is called GML. The project allows for two people on the same PC to play a game of go up to the end on a board size 9X9 and 13X13 (19x19 is not completed, but would be very easy to implement).



## Rules of Go:

In case you are not familiar with the rules of the game you can familiarize yourself with them with any of these resources:


🌐 [Wikipedia](https://en.wikipedia.org/wiki/Rules_of_Go)

📺 [YouTube](https://www.youtube.com/playlist?list=PL4DLlaT_bvDG5y6WSfXU8cQsTsb4o3YnT) 

⚪ [online-go.com](https://online-go.com/learn-to-play-go)
 

## Starting the game

To run the game you have two options:

Option 1 > Install GameMaker and run the project from there after you clone the repo. 

Option 2 > the project is uploaded on the public GameMaker servers here:
URL:


## Menu

You can choose what is the board size you want to play on. The available options are the standard sizes, where the 19x19 is not completed.


![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Capture.PNG)

## Playing a match

Both players can play on the same computer taking turns. The player who's turn is is displayed on the right side, also hovering the mouse over the empty board displays the
stone that is about to be placed, which hints at the current player's color. First are black. If he white wants to give an advantage, they can Pass their turn by clicking the Pass button.

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Capture_empty_board.PNG)

The number of hostages taken during the game are shown on the right.

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Capture3.PNG)

Once both players have clicked Pass a prompt is shows asking if the game should go into counting the result.

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Capture4.PNG)

If you select YES, the Negotiation and Counting Phase starts.

## Negotiation and Counting Phase

The dead groups and stones are semi transparent. Disputed area is marked with a green X. And surrounded area owned by one color/player is marked with a square of the color that has managed to effectively surround it.

At this phase the players can negotiate if a group is dead or alive by changing the groups' state by clicking it with the mouse. The area that is currently hovered over with the mouse pointer is highlighted in green.

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Captur5.PNG)

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Captur6.PNG)

Clicking on the group changes it state from dead to alive and vice versa. This changes the end result in the Counting phase. 

## End game and result

To go into end game and see the result of the match you need to click FINALIZE. This displays the result.

![image](https://github.com/tvtsolov/stone-game/blob/main/screenshots/Capture7.PNG)



## Notes

I didn't use AI for any part of the creation of this project. 




