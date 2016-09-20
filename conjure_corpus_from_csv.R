install.packages("gtools")
library(gtools)

# read metadata table and get/override existing) path connection to each text

db = read.csv("db_with_path.csv", header=T, sep = ";", na.strings = "")
files = list.files(path = "corpus_split/", full.names = T)
files = mixedsort(files)
db$path = files

# subsetting

db_core = subset(db, Type == "core")

# conjure stacked corpus

output_corpora<-""
for (i in 1:length(db_core$path)) {
  poem = scan(db_core$path[i], what = "character", sep = "\n", blank.lines.skip=F)
  poem = paste(poem, collapse = "\n")
  output_corpora = paste(output_corpora, poem, sep = "\n\n")
  print(db_core$path[i])
}

# write corpus on disk

writeLines(output_corpora,"corpora_core.txt", sep = "\n")

