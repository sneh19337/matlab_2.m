# matlab_2.m
In continuation of the previous repository on condusct of  experiment for finding probability 
In continuation of the previous repository on the conduct of experiment with data more concentrated than previous one.
In the first experiment we needed to take 30 observations of  the data which is the time gap between the consecutive messages we receive on a messaging app (Whatsapp) .
The data is discrete in nature initially but after plotting histogram we are plotting  the data in continuous intervals.   So, now we calculate the pdf for the data. 
So, firstly I took 30 observations as an array and plot a histogram using inbuilt function. Then I used inbuilt fitting function to fit my data in the probability distribution .
I used ‘Exponential distribution’ because in experiments where our main concern is on time intervals exponential distribution proves to be very handy.
The exponential distribution is a continuous distribution that is commonly used to measure the expected time for an event to occur.
I then calculated expectation, probability (that the next message will appear in time less then the expected value) using general methods like for expectation I used summation x.p(x).
For probability I simply used an inbuilt function of cdf in MATLAB. This function calculates the cdf upto the expected value and this equals to the probability required .
Then I used 10 new observations for counting head, tail for the data accordingly to  the value of observation if it is more or less than expected value.
In experiment 2, the procedure is same only the data changes as our data is about the messages we receive from one single person. The data here can be thought as more closely packed as while chatting with one person the messages come more quickly. 
Here, I used ‘normal distribution’ as the data is more concentrated this time . The randomness is less in data and hence less will be the deviation and hence the data can be fit using normal distribution.
 
For expectation summation x*p(x) and for probability inbuilt function of cdf because it calculates summation of cdf upto the value less than the  expected value and that is our required probability.
