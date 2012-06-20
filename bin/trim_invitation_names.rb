#! /usr/bin/env ruby

num_stripped = 0
Invitation.all.each do |invitation|
  old_name = invitation.name.clone
  invitation.name.strip!
  puts "'#{old_name}' => '#{invitation.name}'"
  if old_name != invitation.name
    num_stripped += 1
    invitation.save
  end
end

puts "Fixed #{num_stripped} invitation names."