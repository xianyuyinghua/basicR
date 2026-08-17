# basicR

用于存放绘图、配色等可复用基础函数的个人 R 包。

## 安装

```r
install.packages("basicR", repos = NULL, type = "source")
```

在 `basicR` 目录的上一级运行上述命令，或使用：

```r
remotes::install_local("basicR")
```

## 使用

```r
library(basicR)

cols <- get_colors(3.1)
save_figure(plot_object, "figures/example", formats = c("pdf", "png"))
```
