f <- file(description="stdin")
input <- read.table(f,sep="\t",header=F,stringsAsFactors=F,na.strings = "\\N")

for(i in unique(input[,1])){
  write.table(cbind(i, sum(input[input[,1]==i,2])),
              stdout(),row.names=F,col.names=F,quote=F,sep="\t")
}

