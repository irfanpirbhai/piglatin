class PiglatinConverter
  def self.convert(a)
  	if a == ""
   		return ""
	elsif a == nil
		return nil
	else
  		a = a.downcase
  		ind_val = a.index(/[aeiou]/)
  			if ind_val == 0
  				return a+"way"
			else
  				leftside = a[0...ind_val]
  				rightside = a[ind_val..-1]
				return rightside + leftside + "ay"
			end
	end
  end
end