### Task 1: Extract Nouns for Classes:
### Task 2: Write their roles:

- Player 1 / Player 2
  - ROLE: Represents a user in the game, stores their name, score and lives (remaining/total)
  - Relevant Information: Name, Score, Lives
  - Initialized: Name, starting Score, set number of total Lives
  - Public Methods: 'get_name()' 'get_score()' 'get_lives()' 'increaase_score()' 'decrease_lives()'
  
- Game (manage game flow)
  - ROLE: manages the game flow, including the question handling, game loop and announcing the winner.
  - Relevant Information: Current Player, list of Players
  - Initialization: list of players
  - Public Methods: 'start_game()' 'game_loop()' 'announce_winner()'
  
- Question (represent and manage the questions)
  - ROLE: represents a question, including the question text and correct answer
  - Relevant Information: question text, correct answer
  - Initialization: question text, correct answer
  - Public Methods: 'check_answer(player_answer)
  
- Score (keep track of the players' scores and lives)
  - ROLE: Stores and manages the player's score and lives
  - Initialization: initial score and number of lives
  - Public Methods: 'decrease_lives()' 'increase_score()' 'get_score()' 'get_lives()'
  
- Turn (manage and keep track of the game turns)
  - ROLE: Manage each players turn, present questions and process answers
  - Relevant Information: current player, questions, players answer
  - Initialization: current player and set of questions
  - Public Methods: 'ask_question()' 'process_answer()' 'end_turn()'
  
- User Interface (hand user input and output)
  - ROLE: Handle user input and output, display game status, collect players answers
  - Relevant Information: user input, game status, player answers
  - Initialization: none
  - Public Methods: 'display_question()' 'get_player_answer()' 'display_score()'


*
Which class will contain the game loop (where each instance of the loop is the other players turn)?
Which class should manage who the current_player is?
Which class(es) will contain user I/O and which will not have any?
*

Game class --> Game loop = each iteration of the loop will represent a players turn
Turn class --> players turn = manages who the current player for each turn is
User Interface class --> input/output = handle the users input and will communicates with the other classes to 
                                        faciliate the game and output the answers/updates scores etc

