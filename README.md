hierarchical_df
================

Sometimes hierarchical data is stored in a CSV, instead of a more natural
data file like XML or JSON.  In these cases, a flat table has columns
which define what branch of the hierarchy an object is in.  This package
converts a flat data frame into nested lists, which can then be
written out to JSON using RJSONIO
