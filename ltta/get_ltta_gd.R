get_ltta_gd =  function(txt_col
                        , txt_id_col
                        , min_length = 50 # minimum 50 tokens per chunk recommended
                        , bins = 5)
{
  
  require(quanteda)
  source('YOURFOLDER/qdictionary_7plus.Rdata') # download from repo
  
  t1 = Sys.time()
  
  min_tokens = bins * min_length
  
  text_list = list()
  
  for(i in 1:length(txt_col)) {
    
    print(paste('---> performing dictionary extraction on text: ', txt_id_col[i], sep = ""))
    tokens_base = tokens(txt_col[i])
    ntok = ntoken(tokens_base)
    
    if(ntok >= min_tokens){
      
      chunks = tokens_chunk(tokens_base, size = ceiling(ntok / bins))
      
      dict_chunk = chunks %>%
        tokens_lookup(dictionary = qdictionary_7plus, nomatch = "nomatch") %>%
        dfm() %>%
        dfm_weight(scheme = "prop")
      
      text_list[[i]] = dict_chunk 
      
    } else {
      
      print('min. tokens per chunk not achieved')
      
    }
  }
  
  t2 = Sys.time()
  print(t2-t1)
  return(text_list)
}
