##Binomial Distribution##
#Question 01) A factory produces light bulbs, and the probability of a bulb
#being defective is 0.1. Out of a batch of 10 bulbs, what is the probability
#that

#1. Exactly 2 bulbs are defective P(X = 2)
#2. At most 2 bulbs are defective P(X <= 2)

n = 10 #Size of the sample
p = 0.1 #Prob of being defective

prob_exactly_2 = dbinom(2,size = n,prob = p)
prob_at_most_2 = pbinom(2,size = n,prob = p)

#Question 02) A marketing survey finds that 40% of customers prefer brand
#A. In a random sample of 15 customers, what is the probability that

#1. Exactly 6 customers prefer brand A P(X = 6)
#2. More than 6 customers prefer brand A P(X >=6)

n = 15
p = 0.4

prob_exactly_6 = dbinom(6, size = n, prob = p)
prob_more_than_6 = 1 - prob_exactly_6


##Hypergeometric Distribution##
#Question 01) A deck of cards has 52 cards, including 13 hearts. If 5 cards
#are drawn without replacement, what is the probability of getting exactly 2
#hearts

N = 52 #Population
K = 13
n = 5 #Sample

prob_2_hearts = dhyper(2,K,N-K,n)

#Question 02) In a batch of 20 items, 7 are defective. If 6 items are
#randomly chosen, what is the probability that

#1. Exactly 3 items are defective
#2. At least 3 items are defective

N = 20
K = 7
n = 6

exactly_3_defective = dhyper(3,K,N-K,n)
two_or_fewer_defective = dhyper(2,K,N-K,n)
at_least_3_defective = 1 - two_or_fewer_defective

##Geometric Distribution##
#Question 01) A die is rolled until a 6 appears. What is the probability that it
#takes exactly 4 rolls to get a 6
p = 1/6
prob_4_rolls = dgeom(3,prob = p)
print(prob_4_rolls)

#Question 02) The probability of a customer making a purchase at a store is
#0.2. What is the probability that the first purchase occurs on the 5th
#customer
p =0.2
prob_1st_purchase_at_5th_customer = dgeom(4,prob = p)
print(prob_1st_purchase_at_5th_customer)

##Negative Binomial Distribution##
#Question 01) A basketball player has a 60% chance of making a free
#throw. What is the probability that the player makes the 5th successful shot
#on the 8th attempt.
r = 0.5
p = 0.6
prob_5th_success = dnbinom(3,size = r, prob = p)
print(prob_5th_success)

#Question 02)A factory produces widgets, and 10% of them are defective.
#What is the probability that the 3rd defective widget is found on the 7th
#inspection


r = 3
p = 0.1
prob_7th_inspection = dnbinom(4,size = r, prob = p)
print(prob_7th_inspection)

##Exponential Distribution##
#Question 01) The average time between arrivals of buses at a station is 10
#minutes. What is the probability that the next bus arrives within 5 minutes.
rate = 0.1
prob_within_5 = pexp(5, rate = rate)
print(prob_within_5)

#Question 02) A machine part has an average lifespan of 100 hours. What
#is the probability that it fails after 120 hours.
rate = 0.01
pro_within_120 = pexp(120, rate = rate)
pro_after_120 = 1- pro_within_120
print(pro_after_120)

##Normal Distribution##
#Question 01) The heights of students in a class are normally distributed
#with a mean of 170 cm and a standard deviation of 10 cm. What is the
#probability that a randomly selected student is taller than 180 cm
mean = 170
sd = 10

prob_taller_180 = pnorm(180, mean, sd, lower.tail = FALSE) #P(X > 2)
print(prob_taller_180)

#Question 02) IQ scores are normally distributed with a mean of 100 and a
#standard deviation of 15. What is the probability that a person’s IQ is
#between 85 and 115
mean = 100
sd = 15



###########################################
#dbinom() - Probability Mass Function
#Prob of exactly 3 in 10 trials with p = 0.5
#P(X = 3)
dbinom(3, size = 10, prob = 0.5)


#pbinom() - Cumulative Distribution Function
#Prob of 3 or fewer successes in 10 trials with p = 0.5
#P(X <= 3)
pbinom(3, size = 10, prob = 0.5)

#Prob of 3 or more successes in 10 trials with p = 0.5 
#P(X > 3)
pbinom(3, size = 10, prob = 0.5, lower.tail = FALSE)