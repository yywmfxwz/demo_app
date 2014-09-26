
	def sequence(n,m,c)
		i=0
		while (i<n)
			yield i*m+c		
		i+=1
		end
	end
sequence(5,2,2){|x|puts x}