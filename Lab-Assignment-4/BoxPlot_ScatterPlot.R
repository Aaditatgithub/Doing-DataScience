#Boxplot----
#invoke library before using it
library(ggplot2)

#fill=Species does colorcoding for different species
#geom_boxplot(characteristics of the plot)
#labs -> label
p <- ggplot(iris, aes(Sepal.Length, Species, fill=Species)) + geom_boxplot(outlier.shape= 9, outlier.color = "orange", outlier.size=4) + theme(legend.position="none") + labs(title="Boxplot",x="sepal length", y="species") + coord_flip()
p


#ScatterPlot----
m <- dslabs::murders
m
p <- ggplot(m, aes(population/10^6, total, label = abb)) + geom_point(aes(color=region)) + scale_x_log10() + scale_y_log10() + geom_text(size=3, nudge_x = 0.075) + labs(title="Scatter plot",x="population", y="murders")
p



