#This is a codewars 6kyu challenge: define a best_monthly method for a set of users, provided as an array with a group of users for each month.
#You must return a nested array of all users who made a purchase in every month, in the format [count, [all, users], next count, [next, users]], sorted by most purchases to least purchases.
#I added a few extras, by defining a YearlyUsers class and adding a few other basic methods: returning a list of all users who made purchases, and returning the purchase count for a specific user.

class YearlyUsers

  def initialize(*users)
    @users = users
  end

  def all_users
    @users.flatten.uniq
  end

  def purchase_count(user)
    count = @users.flatten.count {|x| x == user}
    puts "#{user}: #{count} purchases this year."
  end

  def best_monthly
    year = @users.flatten
    monthly_users = @users.reduce(:&).each_with_object({}) { |user, hash| hash[user] = 0 }
    year.each { |user| monthly_users[user] += 1 if monthly_users.include? user }
    monthly_users.map.with_object({}) { |(user, purchases), hash| (hash[purchases] ||= []) << user }
                 .each { |purchases, user| user.sort! }
                 .sort.reverse
  end

end

year1 = YearlyUsers.new(['A042', 'B004', 'A025', 'A042', 'C025'],
              ['B009', 'B040', 'B004', 'A042', 'A025', 'A042'],
              ['A042', 'A025', 'B004'])
