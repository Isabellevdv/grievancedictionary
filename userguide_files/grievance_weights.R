grievance_weights = function(text, # specify character vector
                            remove_short = F, # remove documents where # of words < 50?
                            dict = weighted_dictionary, 
                            df_or_dfm = "dfm") { # return dfm or dataframe?
  
  require(quanteda)
  require(quanteda.sentiment)
  # check number of words
  text = corpus(text, docvars = data.frame(ntoken = ntoken(text)))
  n_1 = length(text)
  n_2 = length(which(text$ntoken > 50))
  print(paste("caution:", n_1-n_2, "texts are < 50 words"))
  
  if(remove_short == T) {
    
    text = corpus_subset(text, text$ntoken > 50)
    print(paste("removed", n_1-n_2, "texts due to number of words < 50"))
    
  }
  
  category_weights = list()
  
  for(i in 1:22) { 
 
  # lookup dictionary words
  results = text %>%
    tokens() %>%
    tokens_wordstem() %>%  
    textstat_valence(dictionary = weighted_dictionary[i]) 

  category_weights[[i]] = mean(results[,2])
  
  }

  category_weights = data.frame(category = names(weighted_dictionary), weight = unlist(category_weights))
  return(category_weights)
}
