*Assignment 4

*Adam Walker
*POL S 411
*Dr Snagovsky
*Nov 21 2025

clear all
cd "C:\Users\adamj\Downloads"
use "ESS9e02.dta"



* 2 RESEARCH

* A) Question: Does the number of years that someone attended schooling influence how much they believe their country allows everyone a fair chance to participate in politics?

* B) Null: The number of years of schooling has no impact on ones belief regarding how much their country allows everyone to participate in politics.

* C) Altertantive: Those with more years of schooling will believe that their country allows more fair participation than those who don't have as much schooling. This is because those barriers that affect how much schooling someone can do can overlap with how much they can participate in politics. Those with less barriers to participate may not realize the struggles others face in participating. For example: those with the time and money to afford school may be more likely to have money to donate to campaigns and time to invest in understanding politics. 


* 3 SUMMARIZE I AND D VAR

sum frprtpl eduyrs, detail

* Agreement of Fairness of Political Access: Mean: 2.68, Median: 3, Min: 1, Max: 5, Std. dev: 1.04, Skew: 0.14

* Education Years: Mean: 12.89, Median: 12, Min: 0, Max: 60, Std. dev: 4.07, Skew: 0.48



* 4 CONTROL VARS

* A) Age (agea, continuous): I selected this because as people get older and retire they may have more free time to engage in politics.

* B) Domicil (domicil, ordinal): It may be easier to participate in politics in a big city because rallies, poll stations or politician's offices may be closer.

* D)  Religion (rlgdnm, categorical): It could be that some religions enjoy better political standing with the government and therefore feel treated fairily and assume others do as well. 

* D) i) Gender (gndr, binary): Men have historically enjoyed exclusive or preferential access to politics and may not realize areas and ways in which women are still excluded. 
*	ii) Voted (vote, binary): If they voted in the last federal election they likely have some access to participate and may feel that if they had the chance others may too.
replace vote = . if vote == 3
*	iii) I chose these two to interact because I want to see if having voted or not affects someones perceptions on present gender-based inequalities in access to politics.

* In a multiple regression between my variables I expect to find that education play a significant roll in how fair someone things their system is. I do think that if a person is male or older that will substantially increase their likelyhood to think their system is fair. I am curious how religion will play out but am unsure of it's potential effects. I think those in big cities will believe that the system is fairer and that this will be a signicant variable. With respects to the interaction I expect men who voted will have higher levels of thinking the system is fair than all other categories, with women who didn't as the lowest.


* 5 REGRESSION 

regress frprtpl eduyrs agea domicil rlgdnm i.gndr##i.vote


* 6 INTERPRETATION

* A) All variables are statistically significant, female#no has a p value of 0.050 so it is exactly on our max threshold to consider something significant

* B) Note, for each interpretation we hold all other variables constant. For every additional year of education some has they move ~ .05 categories (on the likert scale) towards believing their states system allows for fair political participation. For each additional year of life someone has lived they move ~0.002 categories closer to believing their system is fair. Each one unit increase someone has going from living on a farm to living in a big city they will believe their system if fairer by ~0.035 of a category on the fairness scale. For what religion someone identifies with the coefficient is rather useless because there is no meaningful relationship between the numbers associated with each religion. 

*Being a female who voted, as compared to a man who voted reduces the amount you think your system is fair by ~0.11 of a category. Having not voted (and being male), compared having (and being male) voted also reduces the amount one thinks their system allows for fair participation by ~0.33 of a category. 

* C) The interaction between being a woman and not having voted is ~0.067 this means that women who didn't vote believe there system is slightly more fair than those women who did vote. 


*7 KERNAL DENSITY

predict r, resid
kdensity r, normal name("Kdensity")
graph save "Kdensity" "C:\Users\adamj\Downloads\Kdensity.pdf"

* I see 4 large, 2 mediuim and 1 small peak. This indicates sub populations within my data but this is explained by my dependent variable being a likert scale and not continuous. My model is relatively symetrical which is good. 

*8 RVFPLOT
rvfplot , name("RVFplot")
graph save "RVFplot" "C:\Users\adamj\Downloads\RVFplot.pdf"

* There are five lines, this is typical for a likert scale and they are all straight. I would not that overall my residuals are centred a bit above 0 meaning the model is sometimes under predicting values and there are some outliers as fitted values increase.

*9 BREUSH-PAGAN
estat hettest

* Our model is statistically significant with a p value of 0.000 and has heteroskedasticiity. It infact has a lot of heteroskedasticiity as the test statistic is 17.88. This is not immediatly worrying as my d-var is likert and it makes sense for residuals to be clustered around each whole number answer.


*10 INFLATION FACTOR
vif

*My main variables have low inflation factors meaning they are not very correlated with eachother. As expected my interaction terms have slightly higher factors but still withing a low-moderate range. 


