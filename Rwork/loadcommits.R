library(rdd)
#Cluster 1 - 62 projects 
#Aircoookie/WLED
commits_wled <- data.frame(read.csv2('commits_wled.csv', sep = ","))
commits_wled$has_ci <- as.factor(commits_wled$has_ci)
commits_wled$is_core <- as.factor(commits_wled$is_core)
summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_wled))

#	smallstep/certificates
commits_certificates <- data.frame(read.csv2('commits_certificates.csv', sep = ","))
commits_certificates$has_ci <- as.factor(commits_certificates$has_ci)
commits_certificates$is_core <- as.factor(commits_certificates$is_core)
summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_certificates))

#texstudio-org/texstudio
commits_texstudio <- data.frame(read.csv2('commits_texstudio.csv', sep = ","))
commits_texstudio$has_ci <- as.factor(commits_texstudio$has_ci)
commits_texstudio$is_core <- as.factor(commits_texstudio$is_core)
summary(lm(num_issues ~ has_ci + is_core + has_ci*is_core, data = commits_texstudio))
#Cluster 2 - 6 projects (green)






#Cluster 3 - 11 projects (blue)