# MasterMind

You are to program the classic board game MasterMind.

Here is a sample [online version](http://www.web-games-online.com/mastermind/index.php)

Our MasterMind game will only have six colors:
- Blue
- Orange
- Green
- Purple
- Yellow
- Pink

Our MasterMind will have a code length of four secret colors.

Our MasterMind game will allow for duplicate colors in the secret.

# Deliverables

- Fork this repository to your own github account.
- Your code should run with `ruby web.rb` and then browse your application via the port given by `sinatra`

# Explorer Mode
- You are given a MasterMind class that can manage an entire game of MasterMind
- Your web application should allow the user to
  - Start a new game (even in the middle, which should create a new game -- e.g. they can _give up_)
  - Allow them to make a guess after supplying four colors
    - any UI you want, but make it nice. Text input, drop downs, color boxes to click, drag-and-drop, etc.
  - Allow them to submit their guess
  - Show them the result for each past guess including the last
  - Allow the user to make ten guesses before marking the game lost
  - Show the user a nice result if they have won the game.
- The design should be professional so consider fonts, colors, headers, images, spacing, etc.
- You do *not* have to duplicate the design of a MasterMind board, but do not vary so far from that design that it isn't clear how the game works.

# Adventure Mode
- Save a scoreboard data file to include:
  - Total # of games played
  - Total # of games won
  - Smallest # of guesses to a win

# Epic Mode
- Allow for a two player mode, where one player supplies the initial secret and the other user makes the guesses. The computer should still evaluate each guess and present the results.
