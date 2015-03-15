f <- file(description="stdin")
words <- scan(f, character(0), quiet=T)
tab = table(words)

for(i in 1:length(tab)){
  write.table(cbind(names(tab)[i], tab[[i]]),
              stdout(),row.names=F,col.names=F,quote=F,sep="\t")
}
