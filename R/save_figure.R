save_figure <- function(obj, filename, width=6, height=6, res=600, formats=c("pdf", "tiff", "png", "svg"),font = "Arial") {
  
    # 内部通用绘制函数
    plot_obj <- function(obj) {
        if (is.function(obj)) {
            obj()
        } else if (inherits(obj, "ggplot")) {
            print(obj)  # 对于 ggplot，需要使用 print()
        } else if (inherits(obj, "Heatmap")) {
            ComplexHeatmap::draw(obj)
        } else if (inherits(obj, "upset")) {
            print(obj)
        } else if (grid::is.grob(obj)) {
            grid::grid.draw(obj)
        } else if (inherits(obj, "recordedplot")) {
            replayPlot(obj)
        } else if (is.numeric(obj) || is.matrix(obj) || is.data.frame(obj)) {
            plot(obj)  # 对 base R 图形进行绘制
        } else {
            print(obj)  # 兜底，触发自带的 print 方法
        }
    }

    # 保存 magick 图像对象的逻辑，支持调整大小
    save_magick_image <- function(obj, filename, formats) {
        # 根据格式保存图像
        if ("png" %in% formats) {
            magick::image_write(obj, path = paste0(filename, ".png"), format = "png")
        }
        if ("tiff" %in% formats) {
            magick::image_write(obj, path = paste0(filename, ".tiff"), format = "tiff")
        }
        if ("svg" %in% formats) {
            magick::image_write(obj, path = paste0(filename, ".svg"), format = "svg")
        }
        if ("pdf" %in% formats) {
            magick::image_write(obj, path = paste0(filename, ".pdf"), format = "pdf")
        }
    }
  
  # 如果是 magick 图像对象，使用 image_write 保存
  if (inherits(obj, "magick-image")) {
    save_magick_image(obj, filename, formats)
  } else {
    # 对于其他图形对象，使用图形设备保存
    if ("pdf" %in% formats) {
      cairo_pdf(paste0(filename, ".pdf"), width = width, height = height, family = font)
      plot_obj(obj)
      dev.off()
    }

    if ("tiff" %in% formats) {
      tiff(filename = paste0(filename, ".tiff"), width = width, height = height, units = "in", res = res, compression = "lzw", family = font)
      plot_obj(obj)  # 使用 print() 绘制图形
      dev.off()  # 关闭图形设备
    }

    if ("png" %in% formats) {
      png(filename = paste0(filename, ".png"), width = width, height = height, units = "in", res = res, family = font)
      plot_obj(obj)  # 使用 print() 绘制图形
      dev.off()  # 关闭图形设备
    }

    if ("svg" %in% formats) {
      svg(filename = paste0(filename, ".svg"), width = width, height = height, family = font)
      plot_obj(obj)  # 使用 print() 绘制图形
      dev.off()  # 关闭图形设备
    }
  }
}
