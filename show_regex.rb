def show_regex(string, pattern)
  match = string.match(pattern)
  if match
    puts "#{match.pre_match} =>#{match[0]}<= #{match.post_match}"
  else
    puts "No match found."
  end
end

# show_regex("yes | no", /\|/)
# show_regex("yes (no)", /\(no\)/)
# show_regex("are you sure?", /e\?/)
str = "this is\nthe thing"

show_regex(str, /^th/)
show_regex(str, /is$/)
show_regex(str, /\Athis/)
show_regex(str, /\Athe/) #=> No match found.
show_regex(str, /\Bis/)
str = "Price $22."
show_regex(str, /[aeiou]/)
show_regex(str, /[\s]/)
show_regex(str, /[$.]/)