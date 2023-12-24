#about the same
boxplot(projectscluster$num_topics ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$total_commits ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$core_devs ~ projectscluster$cluster, col = c(2,3,4))

#pink - 52 projects
boxplot(projectscluster$avg_commits ~ projectscluster$cluster, col = c(2,3,4))
#pink-less
boxplot(projectscluster$issues ~ projectscluster$cluster, col = c(2,3,4))

#green - 3 projects
boxplot(projectscluster$size ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$prs~ projectscluster$cluster, col = c(2,3,4))
#green - less
boxplot(projectscluster$avg_build_mins ~ projectscluster$cluster, col = c(2,3,4))

#blue - 10 projects
boxplot(projectscluster$stars ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$forks ~ projectscluster$cluster, col = c(2,3,4))
boxplot(projectscluster$non_core_devs ~ projectscluster$cluster, col = c(2,3,4))



boxplot(projects$commits_per_day ~ projects$cluster, col = c(2,3,4))




