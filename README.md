Yearly Purchases Challenge

This is a codewars 6kyu challenge in Ruby: 
"Define a best_monthly method for a set of users, provided as an array with a group of users for each month.
You must return a nested array of all users who made a purchase in every month, in the format [count, [all, users], next count, [next, users]], sorted by most purchases to least purchases."

I added a few extras, by defining a YearlyUsers class and adding a few other basic methods: returning a list of all users who made purchases, and returning the purchase count for a specific user.

To run: load into IRB.

Example input: 
  `exampleyear = YearlyUsers.new(['A042', 'B004', 'A025', 'A042', 'C025'],
                                 ['B009', 'B040', 'B004', 'A042', 'A025', 'A042'],
                                 ['A042', 'A025', 'B004'])`
