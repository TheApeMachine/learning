# 22. DP IV: Guitar Fingering, Tetris, Super Mario Bros.

[https://www.youtube.com/watch?v=tp4_UXaVyx8]

## 5 Easy Steps to Dynamic Programming

1. Define sub-problems
2. Guess (part of solution)
3. Write recurrence that uses guessing and sub-problems
4. Recurse + memoize (check if recurrence is acyclic) or bottom-up (needs a topological order)
	* `Total running time = number of sub-problems x time / sub-problem`
5. Solve the original problem

## Two Kinds of Guessing

1. In step 2 and 3 guessing which sub-problem to use to solve bigger sub-problem
2. In step 1 add more sub-problems, to guess/remember more features of the solution

## Piano/Guitar Fingering

Given a sequence of n notes, find fingering for each note.

- fingers 1, ..., F
- Difficulty measure d(p, f, q, g), where p and q are notes, and f and g are fingers.

```
# notes[i:] -> notes to be played
# f         -> finger
# g         -> finger
```
1. Sub-problem =
	* How to play `notes[i:]` when using `f` for `notes[i]`
2. Guess =
	* finger `g` for `notes[i+1]`
