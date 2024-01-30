1/ Big O Notation:
- Achieves consistency by focusing only on the number of steps that an algorithm take;
- Big O effectively describes both the best- and worst-case scenarios pf a given algorithm, Big O Notation generally refers to worst-case scenario unless specified otherwise. This is why most references will describe linear search as being O(N) even though it can be O(1) in a best-case scenario.
- The reason for this is that this "pessimistic" (thinking that bad things are more likely to happen or emphasizing the bad part of a situation) approach can be a useful tool: knowing exactly how inefficient an 
algorithm can get in a worst-case scenario prepares us for the worst and may have a strong impact on our choice.
+ O(log₂N) aka O(logN): it means that the algorithm takes as many steps as it takes to keep halving the data elements until we remain with one. For each iteration, the data elements will be decreasing by halve.

2/ Sorting algorithms: -> Sorting algorithms have been the subject of extensive research in computer
science, and tens? (maybe more) of such algorithms have been developed over years. They all solve the following problem: Given an array of unsorted numbers, how can we sort them so that they end up win ascending order?