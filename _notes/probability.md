# Chapter 6: Probability

## Probability

### Frequentist v. Bayesian


- Frequentist:  limit of the relative frequency with which an event of interest occurs when the number of experiments repeatedly conducted under the same conditions approaches to infinity
- Bayesian: interprets probability as one’s subjective belief about the likelihood of event occurrence.


### Probability Axioms

1. The probability of any event A is non-negative.
2. Probability that one of the outcomes in the sample space occurs is 1
3. If events A and B are mutually exclusive then P(A or B) = P(A) + P(B)


The addition rule
$$
P(A or B) = P(A) + P(B) - P(A and B)
$$

Law of total probability
$$
P(A) = P(A and B) + P(A and B^C)
$$

### Permutations

Number of permutations when arranging $k$ objects out of $n$ unique objects is
$$
n P_k  = n x (n - 1) \times \cdots \times (n - k + 2) \times (n - k + 1) = \frac{n!}{(n - k)!}
$$

Birthday question. Probability that two people have the same birthday.

### Combinations

Number of combinations choosing $k$ distinct elements from $n$ elements is
$$
n C k = \binom{n}{k} = \frac{n Pk }{k!} = \frac{n!}{k!(n - k)!}
$$

## Conditional Probability

### Conditional Marginal, and Joint Probabilities

Conditional probability of an event
$$
P(A | B) = \frac{P(A and B)}{P(B)}
$$
Joint probability
$$
P(A and B) = P(A | B)  P(B) = P(B | A) P(A)
$$
Marginal Probability
$$
P(A) = P(A | B) P(B) + P(A | B^3) P(B^C)
$$

Example: Florida voters: race, gender, age.

**Note** Show a simple visualization with a table, and then discuss how it extends to
4 x 4.

### Independence

Events $A$ and $B$ are independent
$$
P(A and B) = P(A) P(B)
$$

### Bayes' Rule

Bayes' rule
$$
P(A | B) = \frac{P(B | A) P(A)}{P(B)} = \frac{P(B | A)}
$$

## Random Variables and Probabilities

- Probability (Mass) Distribution Function
- Cumulative Distribution Function or Cumulative Probability Function
- Bernoulli Distribution
- Uniform Distribution
- Normal Distribution
    - z-score
- Expectation and Variance
- Linear operator of an expectation
- Variance / Standard deviation

E.g. Predicting election outcomes wit

## Large Sample Theorems

- Law of Large Numbers
- Central Limit Theorem


**TOOD** Link to Shiny apps on distributions

### Random Variables


### Large Sample Theories


**Questions:**

1. Trial of Pyx
2. Loterie
3. Bellweather districts
4. Perfectly tied election
5. Empirical simulation of birthdays - get dataset of birthdays from Wikipedia
6. Random simulation of elections
7. Gender of names
8. Age of names
9. Monty Hall Problem
10. German Tank Problem
11. Wikileaks Diplomatic Cable Problem
12. Authorship attribution problem
