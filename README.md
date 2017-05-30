Ruby Card Game
========

World’s Simplest Poker
------

A very simple card game, played between two or more players. Immediately after the cards are dealt, the player with the highest hand wins.

To run the app simply change into the directory and run:
```shell
$ ruby card_game.rb
```
The app will ask you to input the number of players that will be playing, the number of  cards you want each player to be dealt and the game will be played.

Solving the problem
----
- There are players, each player has a name, a hand and a score
- A deck of cards is added to the game, a standard deck of playing 52 cards
- A game is then played, cards are dealt to each player, the score is calculated and the winner is returned

Technologies Used:
----
Built using:
* Ruby
* RSpec
* Command Line
* Github

How to use:
----

Clone the repository:
```shell
$ git clone https://github.com/alexfakhri/ruby-card-game
```

Change into the directory:
```shell
$ cd ruby-card-game
```

To run tests:
```shell
$ rspec
```

To play a game:
```shell
$ ruby card_game.rb
```
Experiment with the number of players and cards you want each player to have to see how it works!

Task
----

Build a very simple card game, played between two or more players. Immediately after the cards are dealt, the player with the highest hand wins.

Requirements
----
We want you to build an application that shuffles a standard 52-card deck, and then deals a fixed number of cards to each player.

After each player has been dealt their cards, add up the value of each hand and declare a winner (or winners, in the case of a draw).

Score each hand by summing the face value of each card (for Ace through ten), and the following values for face cards: Jack = 11, Queen = 12, King = 13.

The number of players should be configurable, as should the number of cards dealt. The game should prevent an impossible combination of players and cards.

The basic solution doesn’t need a user interface beyond inputs (e.g. number of players) and outputs (e.g. winning player).
