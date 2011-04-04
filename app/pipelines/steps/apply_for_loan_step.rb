step :apply_for_loan do
  source :loan_amount do
    @loan_finder.find_all_loans.max
  end
end

# If I don't want to use named slots for things, I can just do:
#
# source do
#   @loan_finder.find_all_loans.max
# end
#
# That overwrites the step's entire context, so that it's just talking about a single object.
#
# There are two kinds of failures due to exceptions:
#   Exceptions raised in the body of the step mean the entire step fails.
#   Exceptions raised in individual operations just mean that operation fails.
# In both cases, execution continues with the next step, buy the overall pipeline will still produce an error result.
