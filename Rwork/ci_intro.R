ci <- read.csv2('ci_introductions.csv', sep = ",")
#all dup project intros - same person for all dupes - only one non core
ci <- ci[-c(4,10,33,39,43,45),]
ci$is_core <- as.factor(ci$is_core)
barplot(table(ci$is_core), ylim = c(0,60), col = c("red", "green"),
        main = "Introduction of CI by developer type", names.arg = c("Non-Core", "Core"))
text(seq_along(table(ci$is_core)), table(ci$is_core), labels = table(ci$is_core), pos = 3, col = "black", cex = 1)

