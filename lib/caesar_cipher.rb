def caesar_cipher(uncipheredString, shift)
	return "" if uncipheredString.nil?

	stringArray = uncipheredString.split("")
	shiftFactor = shift % 26
	caesarArray = []
	stringArray.each do |currentChar|
		newChar = currentChar
		if (currentChar.ord >= 65 && currentChar.ord <= 90) #A..Z
			if((currentChar.ord + shiftFactor) > 90)
				newChar = currentChar.ord + shiftFactor - 26
			else
				newChar = currentChar.ord + shiftFactor
			end
			newChar = newChar.chr
		elsif (currentChar.ord >= 91 && currentChar.ord <= 122) #a..z
			if((currentChar.ord + shiftFactor) > 122)
				newChar = currentChar.ord + shiftFactor - 26
			else
				newChar = currentChar.ord + shiftFactor
			end
			newChar = newChar.chr	
		end
		caesarArray.push(newChar)
	end
	return caesarArray.join("")
end
