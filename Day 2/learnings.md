# Day 2 - Learnings

## Syntax
- Logical Operators
    - && (AND) - Returns **true** if _both_ conditions are true
    - || (OR)  - Returns **true** if _at least one_ condition is true
    - ! (NOT)  - Negates the condition, flipping **true** and **false** and vice versa
- Arithmetic operators are the same as in python
- Comparison operators (==, <, >,..)
    - === (case equality) - often used in case statements to check if a value falls within a specific range or matches a condition.
    - <=> (spaceship operator) - compares two values and returns -1, 0, or 1:
        - -1 if the left value is smaller.
        - 0 if both values are equal.
        - 1 if the left value is greater.
- if-elif-else turns in to if-elsif-else in Ruby 
- @ Sign - refers to an instance variable.
    - Instance variables are tied to a specific object instance and are used to store its state.
    - They are accessible across different methods within the same class.
    - If not initialized, their default value is nil.
- Passing Arguments
    - You can pass arguments to methods and commands either using parentheses or with symbol arguments after a colon (:).
    For Example: warrior.walk!(:backward)  

## Abilities
- My warrior is now able to:
    - Action
        - warrior.walk!
        - warrior.attack!
        - warrior.rescue!
        - warrior.rest!
    - Sense
        - warrior.feel
        - warrior.health
    


   




• Level 3 ist etwas schwerer da ich die regeln von Ruby noch nicht ganz verstehe

Level 6:
→ You can walk backward by passing ':backward' as an argument to walk!. Same goes for feel, rescue! and attack!. Archers have a limited attack distance.