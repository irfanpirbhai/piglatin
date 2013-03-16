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