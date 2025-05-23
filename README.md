# The Grievance Dictionary
Repository for the paper:
van der Vegt, I., Mozes, M., Kleinberg, B. & Gill, P. (2021). The Grievance Dictionary: Understanding Threatening Language Use. _Behavior Research Methods._ [Open Access.](https://link.springer.com/article/10.3758/s13428-021-01536-2)

The Grievance Dictionary is a psycholinguistic dictionary which can be used to automatically understand language use in the context of grievance-fuelled violence threat assessment. The development of the dictionary was informed by suggestions from experienced threat assessment practitioners. These suggestions and subsequent human and computational word list generation resulted in a dictionary of 20,502 words annotated by 2,318 participants. The dictionary was validated by applying it to texts written by violent and non-violent individuals, showing strong evidence for linguistic differences between populations and high classification performance.

## This repository
Before using the Grievance Dictionary, please refer to the associated [paper](https://link.springer.com/article/10.3758/s13428-021-01536-2), which contains important information on how and when the dictionary should be used. The files in this repository include the materials (code and data) for you to be able to implement the dictionary using R software. __For reproducible code (and data) from the analyses in our paper, please refer to our [Open Science Framework page](https://osf.io/3grd6/).__ 

### User guide
- userguide.Rmd: explains how to use the Grievance Dictionary (in R)
- userguide_files: associated files and functions needed if you want to implement the Grievance Dictionary in your own R interface (also needed to run code in userguide) 

### Dictionary files
- dictionary_7plus.csv: csv version of the dictionary used in our paper, contains all words which received a mean goodness-of-fit score of 7 or higher.
- dictionary_5plus.csv: csv dictionary containing all words which received a mean goodness-of-fit score of 5 or higher.
- qdictionary_7plus.Rdata: quanteda dictionary object for use in R containing all words which received a mean goodness-of-fit score of 7 or higher.
- qdictionary_5plus.Rdata: quanteda dictionary object for use in R containing all words which received a mean goodness-of-fit score of 5 or higher.
- weighted_dictionary.csv: csv dictionary which contains all words with average ratings, with no restrictions on goodness-of-fit score.

### _NEW_! Translations of the dictionary 
- nl_dict, it_dict, de_dict.Rdata: Dutch, Italian and German translations as quanteda dictionary objects for use in R (all goodness-of-fit 7+)
- nl_dict, it_dict, de_dict.csv: Dutch, Italian and German translations as .csv files (all goodness-of-fit 7+)

## Reference
When using the materials provided in this repository for research purposes, please cite:
```
@article{vandervegt2020grievance,
  title={The Grievance Dictionary: Understanding Threatening Language Use},
  author={van der Vegt, Isabelle and Mozes, Maximilian and Kleinberg, Bennett and Gill, Paul},
  journal={Behavior Research Methods},
  year={2021}
}
```
