(1..10).each do |i|
  Company.create(name: "Company ##{i}", introduction: "This is Company ##{i}.", vision: "This is our WHY!!!", news: "top news for Company ##{i}", benefits: "a lots of benefits")
end