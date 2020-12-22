# The Grievance Dictionary
__Repository for the paper:
van der Vegt, I., Mozes, M., Kleinberg, B. & Gill, P.(2020). The Grievance Dictionary: Understanding Threatening Language Use. [Pre-print.](https://arxiv.org/abs/2009.04798)__

The Grievance Dictionary is a psycholinguistic dictionary which can be used to automatically understand language use in the context of grievance-fuelled violence threat assessment. The development of the dictionary was informed by suggestions from experienced threat assessment practitioners. These suggestions and subsequent human and computational word list generation resulted in a dictionary of 20,502 words annotated by 2,318 participants. The dictionary was validated by applying it to texts written by violent and non-violent individuals, showing strong evidence for linguistic differences between populations and high classification performance.

## This repository
Before using the Grievance Dictionary, please refer to the associated [paper](https://arxiv.org/abs/2009.04798), which contains important information on how and when the dictionary should be used. The files in this repository include the materials (code and data) for you to be able to implement the dictionary using R software. __For reproducible code (and data) from the analyses in our paper, please refer to our [Open Science Framework page](https://osf.io/3grd6/).__ 

### User guide
- userguide.Rmd: explains how to use the Grievance Dictionary (in R)
- userguide_files: associated files and functions needed if you want to implement the Grievance Dictionary in your own R interface (also needed to run code in userguide) 

### Dictionary files
- dictionary_7plus.csv: csv version of the dictionary used in our paper, contains all words which received a mean goodness-of-fit score of 7 or higher.
- dictionary_5plus.csv: csv dictionary containing all words which received a mean goodness-of-fit score of 5 or higher.
- weighted_dictionary.csv: csv dictionary which contains all words with average ratings, with no restrictions on goodness-of-fit score.

## Reference
When using the materials provided in this repository for research purposes, please cite:
```
@article{vandervegt2020grievance,
  title={The Grievance Dictionary: Understanding Threatening Language Use},
  author={van der Vegt, Isabelle and Mozes, Maximilian and Kleinberg, Bennett and Gill, Paul},
  journal={arXiv preprint arXiv:2009.04798},
  year={2020}
}
```