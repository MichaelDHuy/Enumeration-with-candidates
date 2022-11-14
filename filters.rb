# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id)
  # Your code Here
  @candidates.each do |candidate|
    if candidate[:id] == id
      return candidate
    end
  end
  return nil
end

def experienced?(candidate)
  # Your code Here
  if candidate[:experience] >= 2
    return true
  end
  return false
end

def github_points_enough?(candidate)
  if candidate[:github_points] >= 100
    return true
  end
  return false
end

def languages_known?(candidate)
  if candidate[:languages].include?('Ruby') || candidate[:languages].include?('Python')
    return true
  end
  return false
end 

def age_qualified?(candidate)
  if candidate[:age] > 17
    return true
  end
  return false
end

def applied_date?(candidate)
  if candidate[:date_applied] <= 15.days.ago.to_date
    return true
  end
  return false
end

def qualified_candidates(candidates)
  # Your code Here
  right_candidates = []
  candidates.each do |candidate|
    if  experienced?(candidate) && github_points_enough?(candidate) && languages_known?(candidate) && age_qualified?(candidate) && applied_date?(candidate)
    right_candidates.push(candidate)
    end
  end
  return right_candidates
end

def ordered_by_qualification(candidates)
  candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]}.reverse
end 
# More methods will go below
