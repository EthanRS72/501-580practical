library(dplyr)
library(corrplot)
library(ggplot2)
library(factoextra)
library(cluster)
library(clustMixType)

par(mfrow = c(1,1))
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

projectscluster <- projects[, -c(1,2,3,7,9,10,11,12,13,14,15:19,26,28,29)]



kproto_elbow <- c()
kproto_sil <- c()
for (i in 2:25) {
  cur_elbow <- c()
  cur_sil <- c()
  for (k in 1:1000){
    test <- kmeans(projectscluster, i)
    cur_elbow <- c(cur_elbow, test$tot.withinss)
    silhouette_scores <- silhouette(test$cluster, dist(projectscluster))
    cur_sil <- c(cur_sil, mean(silhouette_scores[, "sil_width"]))
  }
  kproto_elbow <- c(kproto_elbow, mean(cur_elbow))
  kproto_sil <- c(kproto_sil, mean(cur_sil))
}
par(mfrow = c(2,1))
plot(2:25, kproto_elbow, type = "l", main = "Elbow")
points(2:25, kproto_elbow, col = "black")
axis(side = 1, at = 2:25, labels = 2:25)

plot(2:25, kproto_sil, type = "l", main = "Silhouette")
points(2:25, kproto_sil, col = "black")
axis(side = 1, at = 2:25, labels = 2:25)










par(mfrow=c(1,1))
corrplot(cor(projectscluster), method = 'number', number.cex = 0.7, col = COL1('Greys'))

projectscluster2 <- projects[, -c(1,2,3,5,7,9,10,11,12,13,14,15,16,17,18,19,26,28,29)]



kproto_elbow2 <- c()
kproto_sil2 <- c()
for (i in 2:25) {
  cur_elbow2 <- c()
  cur_sil2 <- c()
  for (k in 1:1000){
    test2 <- kmeans(projectscluster2, i)
    cur_elbow2 <- c(cur_elbow2, test2$tot.withinss)
    silhouette_scores2 <- silhouette(test2$cluster, dist(projectscluster2))
    cur_sil2 <- c(cur_sil2, mean(silhouette_scores2[, "sil_width"]))
  }
  kproto_elbow2 <- c(kproto_elbow2, mean(cur_elbow2))
  kproto_sil2 <- c(kproto_sil2, mean(cur_sil2))
}



proj_pcs <- prcomp(projectscluster2)


# Scree plot to visualize variance explained by each principal component
plot(proj_pcs)

# Biplot for the first two principal components
biplot(proj_pcs, col = c('skyblue', 'black'), main= "Biplot of PC1 vs PC2")

#projectscluster3 <- projects[, c(19:20,22,25:27)]
projectscluster3 <- projects[, -c(1,2,3,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,23,24,26,28,29)]

kproto_elbow3 <- c()
kproto_sil3 <- c()
for (i in 2:25) {
  cur_elbow3 <- c()
  cur_sil3 <- c()
  for (k in 1:1000){
    test3 <- kmeans(projectscluster3, i)
    cur_elbow3 <- c(cur_elbow3, test3$tot.withinss)
    silhouette_scores3 <- silhouette(test3$cluster, dist(projectscluster3))
    cur_sil3 <- c(cur_sil3, mean(silhouette_scores3[, "sil_width"]))
  }
  kproto_elbow3 <- c(kproto_elbow3, mean(cur_elbow3))
  kproto_sil3 <- c(kproto_sil3, mean(cur_sil3))
}



par(mfrow = c(2,1))
plot(2:25, kproto_elbow, type = "l", main = "Elbow", ylim = c(0,800))
points(2:25, kproto_elbow, col = "black")
lines(2:25, kproto_elbow2, type = "l", col = "red")
points(2:25, kproto_elbow2, col = "red")
lines(2:25, kproto_elbow3, type = "l", col = "green")
points(2:25, kproto_elbow3, col = "green")

axis(side = 1, at = 2:25, labels = 2:25)
legend("topright", legend=c("Vars1", "Vars2", "Vars3"),
       col=c("black", "red", "green"), lty = 1)

plot(2:25, kproto_sil, type = "l", main = "Silhouette", ylim = c(0,0.6))
points(2:25, kproto_sil, col = "black")
lines(2:25, kproto_sil2, col = "red")
points(2:25, kproto_sil2, col = "red")
lines(2:25, kproto_sil3, type = "l", col = "green")
points(2:25, kproto_sil3, col = "green")

axis(side = 1, at = 2:25, labels = 2:25)
legend("topright", legend=c("Vars1", "Vars2", "Vars3"),
       col=c("black", "red", "green"), lty = 1)


gp <- clusGap(projectscluster, kmeans, nstart=100, K.max=25)
gap = fviz_gap_stat(gp) + labs(subtitle = "Hierarchial gap method")

gp2<- clusGap(projectscluster2, kmeans, nstart=100, K.max=25)
gap2 = fviz_gap_stat(gp2) + labs(subtitle = "Hierarchial gap method 2")

gp3 <- clusGap(projectscluster3, kmeans, nstart=100, K.max=25)
gap3 = fviz_gap_stat(gp3) + labs(subtitle = "Hierarchial gap method 3")


dt4 <- projectscluster3[,-c(1,2)]
gp4 <- clusGap(dt4, kmeans, nstart=100, K.max=25)
gap4 = fviz_gap_stat(gp4) + labs(subtitle = "Hierarchial gap method 4")

k <- 4
kmeans_result <- kmeans(projectscluster, centers = k)

# Access cluster assignments
cluster_assignments <- kmeans_result$cluster

# Plot the clusters
plot(projectscluster, col = cluster_assignments, pch = 16, main = "K-Means Clustering")




# Function to get all combinations from k to n
getCombinations <- function(n) {
  numbers <- 1:n
  all_combinations <- lapply(5:n, function(i) combn(numbers, i, simplify = FALSE))
  result_matrix <- do.call(cbind, all_combinations)
  return(result_matrix)
}

# Example: Get all combinations from 3 to 5
result <- getCombinations(10)

# Display the result
print(result)

best_k <- 0
best_sil <- -10
best_data <- 0

for (i in 1:nrow(result)) {
  cat(i, "\n")
  for (j in 1:(ncol(result)-1)) {
    cur_data <- projectscluster2[,c(unlist(result[i, j]))]
    

    cur_data_sil <- c()
    for (y in 2:10) {
      cur_sil_in <- c()
      for (z in 1:50){
        test_clust <- kmeans(cur_data, y, nstart=5)
        cur_silhouette_scores <- silhouette(test_clust$cluster, dist(cur_data))
        cur_sil_in <- c(cur_sil_in, mean(cur_silhouette_scores[, "sil_width"]))
      }
      cur_data_sil <- c(cur_data_sil, mean(cur_sil_in))
      if (max(cur_data_sil) > best_sil) {
        best_k <- which(cur_data_sil == max(cur_data_sil)) + 1
        best_sil <- max(cur_data_sil)
        best_data <- cur_data
        best_results <- c(i,j)
      }
    }
  }
}





k <- best_k
kmeans_result <- kmeans(best_data, centers = k, nstart = 5)

# Access cluster assignments
cluster_assignments <- kmeans_result$cluster

# Plot the clusters
plot(projectscluster3[,-c(7)], col = cluster_assignments+1, pch = 16, main = "K-Means Clustering")
projects$cluster <- cluster_assignments
projectscluster$cluster <- cluster_assignments
