library(dplyr)
library(corrplot)
library(ggplot2)
library(factoextra)
library(cluster)
library(clustMixType)

projects <- data.frame(read.csv2('GitHub_project3.csv', sep = ","))
proj_copy <- projects
projects <- projects[-61,]
projects <- projects %>%
  mutate_if(
    function(x) is.character(x) && all(grepl("^\\d+\\.?\\d*$", x)),
    as.numeric
  )
numeric_columns <- sapply(projects, is.numeric)
projects[, numeric_columns] <- scale(projects[, numeric_columns])

projects$language <- as.factor(projects$language)
projects$type <- as.factor(projects$type)

projectscluster <- projects[, -c(1,2,3,7,9,10,11,12,13,14,16,17,29)]

#projectscluster2 <- projects[, -c(1,2,7,9,11,12,13,14,16,17,29)]
# Convert character columns to numeric

str(projectscluster)

projectscluster2 <- projects[, -c(1,2,6,7,8,9,11,12,13,14,15,16,17,18,19,24,25,27,29)]


#projectscluster3 <- projects[, -c(1,2,3,7,9,10,11,12,13,14,16,17,20,21,29)]
projectscluster3 <- projects[, c(20,21,25)]

k <- 2
kmeans_result <- kmeans(projectscluster, centers = k)

# Access cluster assignments
cluster_assignments <- kmeans_result$cluster

# Plot the clusters
plot(projectscluster[,8], projectscluster[,9], col = cluster_assignments, pch = 16, main = "K-Means Clustering", xlab = "x", ylab = "y")

# Plot the cluster centers
points(kmeans_result$centers, col = 1:k, pch = 8, cex = 2)
legend("bottomright", legend = 1:k, col = 1:k, pch = 8, title = "Clusters")


corrplot(cor(std_cluster), method = 'number', number.cex = 0.7, col = COL1('Greys'))

proj_pcs <- prcomp(std_cluster)


# Scree plot to visualize variance explained by each principal component
plot(proj_pcs)

# Biplot for the first two principal components
biplot(proj_pcs, col = c('skyblue', 'black'), main= "Biplot of PC1 vs PC2")

plot(proj_pcs$x[,1], proj_pcs$x[,2], col = cluster_assignments2, pch =19)
pca_var_explained = proj_pcs$sdev^2 / sum(proj_pcs$sdev^2)

plot(1:16, pca_var_explained, type = "l", lwd = 2, 
     xlab = "Principal components", ylab = "% Variance explained by component",
     main = "Scree plot")
axis(side = 1, at = 1:16, labels = 1:16)


plot(1:16, cumsum(pca_var_explained), type = "l", lwd = 2, 
     xlab = "Principal components", ylab = "Cumulative Variance explained by component",
     main = "Scree plot")
axis(side = 1, at = 1:16, labels = 1:16)
abline(h = 0.8, col = "red")
#choose 6 Components

X <- proj_pcs$x[, c(1:6)] 

#par(mfrow = c(3,1))
sil_kmean = fviz_nbclust(X, kmeans, nstart = 100, method = "silhouette", k.max = 25) + labs(subtitle = "K-means Silhouette method")
gp <- clusGap(X, kmeans, nstart=100, K.max=25)
gap_kmean = fviz_gap_stat(gp) + labs(subtitle = "K-means gap method")
#gap_kmean = fviz_nbclust(X, kmeans, nstart = 1000, method = "gap", nboot = 50) + labs(subtitle = "K-means gap method")
wss_kmean = fviz_nbclust(X, kmeans, nstart = 100, method = "wss", k.max = 25) + labs(subtitle = "K-means wss method")
plot(sil_kmean)
plot(gap_kmean)
plot(wss_kmean)



sil_hcut = fviz_nbclust(projectscluster2, hcut, nstart = 100, method = "silhouette", k.max = 25) + labs(subtitle = "Hierarchial Silhouette method")
gp_hcut <- clusGap(projectscluster2, hcut, nstart=100, K.max=25)
gap_hcut = fviz_gap_stat(gp) + labs(subtitle = "Hierarchial gap method")
#gap_kmean = fviz_nbclust(X, kmeans, nstart = 1000, method = "gap", nboot = 50) + labs(subtitle = "K-means gap method")
wss_hcut = fviz_nbclust(projectscluster2, hcut, nstart = 100, method = "wss", k.max = 25) + labs(subtitle = "Hierarchial wss method")
plot(sil_hcut)
plot(gap_hcut)
plot(wss_hcut)


kproto_elbow <- c()
kproto_sil <- c()
for (i in 2:10) {
  cur_elbow <- c()
  cur_sil <- c()
  for (k in 1:100){
    #test <- kproto(projectscluster3, i, verbose = FALSE)
    #test <- kmeans(projectscluster3, i)
    test <- kmeans(proj_pcs$x, i)
    cur_elbow <- c(cur_elbow, test$tot.withinss)
    silhouette_scores <- silhouette(test$cluster, dist(projectscluster2))
    cur_sil <- c(cur_sil, mean(silhouette_scores[, "sil_width"]))
  }
  kproto_elbow <- c(kproto_elbow, mean(cur_elbow))
  kproto_sil <- c(kproto_sil, mean(cur_sil))
}

plot(2:10, kproto_elbow, type = "l")
points(2:10, kproto_elbow, col = "black")
axis(side = 1, at = 2:10, labels = 2:10)

plot(2:10, kproto_sil, type = "l")
axis(side = 1, at = 2:10, labels = 2:10)


test <- kproto(projectscluster3, 6)
test$tot.withinss

silhouette_scores <- silhouette(test$cluster, dist(projectscluster2))
mean_silhouette <- mean(silhouette_scores[, "sil_width"])



k2 <- 3
kmeans_result2 <- kmeans(projectscluster3, centers = k)

# Access cluster assignments
cluster_assignments2 <- kmeans_result2$cluster

# Plot the clusters
plot(projectscluster, col = cluster_assignments2, pch = 16, main = "K-Means Clustering")

# Plot the cluster centers
points(kmeans_result2$centers, col = 1:k, pch = 8, cex = 2)
legend("bottomright", legend = 1:k, col = 1:k, pch = 8, title = "Clusters")
