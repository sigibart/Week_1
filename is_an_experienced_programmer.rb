def is()
is_an_experienced_programme = candidate.age >= 15 && !candidate.applied_recently? && candidate.languages_worked_with.include?('Ruby') && (candidate.github_points >= 500 || candidate.years_of_experience >=2)
end