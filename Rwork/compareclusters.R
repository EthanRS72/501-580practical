#about the same
boxplot(projectscluster$num_topics ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$total_commits ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$avg_build_mins ~ projectscluster$cluster, col = c(2,3,4))
#blue - 11 projects
boxplot(projectscluster$stars ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$forks ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$non_core_devs ~ projectscluster$cluster, col = c(2,3,4))
#green - 6 projects
boxplot(projectscluster$size ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$core_devs ~ projectscluster$cluster, col = c(2,3,4))
#pink - 62 projects
boxplot(projectscluster$avg_commits ~ projectscluster$cluster, col = c(2,3,4))
#pink-less
boxplot(projectscluster$prs~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$issues ~ projectscluster$cluster, col = c(2,3,4))






