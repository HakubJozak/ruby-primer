class String
  def self.palindrome?(text)
    str = text.gsub /\s/,''
    str == str.reverse
  end
end



[ 'kobyla ma maly bok', 'purpura', 'krk', 'potop' ].each do |s|
  if String.palindrome?(s)
    puts "'#{s}' je palindrom"
  end
end


