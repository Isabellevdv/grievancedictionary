grievance_lookup = function(text, # specify character vector
                            remove_short = F, # remove documents where # of words < 50?
                            dict = qdictionary_7plus, # specify dictionary
                            df_or_dfm = "dfm") { # return dfm or dataframe?
  require(quanteda)
  # check number of words
  text = corpus(text, docvars = data.frame(ntoken = ntoken(text)))
  n_1 = length(text)
  n_2 = length(which(text$ntoken > 50))
  print(paste("caution:", n_1-n_2, "texts are < 50 words"))
  
  if(remove_short == T) {
    
    text = corpus_subset(text, text$ntoken > 50)
    print(paste("removed", n_1-n_2, "texts due to number of words < 50"))
    
  }
  
  # lookup dictionary words
  results = text %>%
    tokens() %>%
    tokens_wordstem() %>%  
    tokens_lookup(dictionary = dict, nomatch = "nomatch") %>%
    dfm() %>%
    dfm_weight(scheme = "prop")
  
  if(df_or_dfm == "dfm") {
    
    return(results)
    
  } else if (df_or_dfm == "df") {
    
    results = convert(results, to = "data.frame")
    return(results)
  }
  
}
