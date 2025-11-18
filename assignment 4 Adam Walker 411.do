*Assignment 4

*1 

*Adam Walker
*POL S 411
*Dr Snagovsky
*Nov 20 2025

clear all
cd "C:\Users\ajwalke1\Downloads"
use "ESS9e02.dta"

*Research
* Does the number of years someone attended schooling influence how much they believe their country allows everyone a chance to participate in politic?

*The number of years of schooling has no impact on ones belief regarding how much their country allows everyone to participate in politics.

* Those with more years of schooling will believe that their country allows more fair participation than those who don't have as much schooling. This is because those barriers that affect how much schooling someone can do can overlap with how much they can participate in politics; such as: finances (ability to donate to parties or pay for school), time(available to attend political events or study), internet access (ability to access information regarding politics or schooling), level of speach and ability to travel. 



*F16 About how many years of education have you completed, whether full-time or part-time? Please report these in full-time equivalents and include compulsory years of schooling.
*G1 How much would you say that the political system in [country] ensures that everyone has a fair chance100 to participate in politics101?

* Summarize variables

sum frprtpl eduyrs, detail

* Education Years: Mean: 12.89, Median: 12, Min: 0, Max: 60, Std. dev: 4.07, Skew: 0.48

* Agreement of Fairness of Political Access: Mean: 2.68, Median: 3, Min: 1, Max: 5, Std. dev: 1.04, Skew: 0.14




*Alternative Variables: Finances(grspnum), Rural vs Urban, Sex(gndr), Is party in power/favourability of current party in power,  domicile

