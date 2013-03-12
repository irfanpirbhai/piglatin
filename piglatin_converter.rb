# class PiglatinConverter
#   def self.convert(a)
#   	if a == ""
#    		return ""
# 	elsif a == nil
# 		return nil
# 	elsif a != a[/[a-zA-Z]+/]
#   		return nil
# 	else
#   		a = a.downcase
#   		ind_val = a.index(/[aeiou]/)
#   			if ind_val == 0
#   				return a+"way"
# 			else
#   				leftside = a[0...ind_val]
#   				rightside = a[ind_val..-1]
# 				return rightside + leftside + "ay"
# 			end
# 	end
#   end
# end

# REFACTORED!
class PiglatinConverter
  def self.convert(a)
  	return a if (a == "") or (a == nil)
  	return nil if (a != a[/[a-zA-Z]+/])
	a = a.downcase
  	n = a.index(/[aeiou]/)
  		return a+"way" if n == 0
		return a[n..-1] + a[0...n] + "ay"
  end
end