Company.limit(10).find_each do |c|
  2.times do |i|
    c.jobs.create(title: "Job #{i} in #{c.name}", description: "This is Job #{i}.", requirements: "something required", compensation: "NT$ #{i + 1}M ~ #{(i + 1) * 2}M (Annual)")
  end
end