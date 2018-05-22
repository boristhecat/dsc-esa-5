# esoph dataset analysis script
library(plyr)
library(ggplot2)
library(reshape)

# Look at the dataset
data()
dim(esoph)
names(esoph)
head(esoph, 10)
summary(esoph)

# split-apply-combine with plyr package
computeCancerProportion <- function(df) {
  cancer.prop <- sum(df$ncases) / sum(df$ncontrols)
  data.frame(cancer.prop = cancer.prop)
}

# This will show, that higher tobaco consumption leads to higher probability of cancer
# ddply splits the frame into groups, applies the defined function and combines it into a frame
tobCancer <- ddply(esoph, .(tobgp), computeCancerProportion)
head(tobCancer, 10)

# In the next step, we will plot it since visuals are way easier to analyse.
# the cancer proportion by alcohol and tobaco
alcTobCancer <- ddply(esoph, .(alcgp, tobgp), computeCancerProportion)
head(alcTobCancer, 10)
plot <- qplot(x=alcgp, y=tobgp, fill=log(cancer.prop), geom='tile', data=alcTobCancer)
plot + labs(x='Alcohol consumption', y='Tobacco Consumption', title='Cancer by Alcohol and Tobacco')

# Melt esoph to differentiate between values from ncases and ncontrols and plot it.
# The bars show a higher probability of cancer for heavy drinkers since the red ncases increase proportional with increasing alcohol consumption
esophMelted <- melt(esoph)
ggplot(esophMelted, aes(x=alcgp, y=value, fill=variable)) + geom_bar(stat="identity", position="dodge")
