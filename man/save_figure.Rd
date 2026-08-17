\name{save_figure}
\alias{save_figure}
\encoding{UTF-8}
\title{将图形对象保存为一种或多种文件格式}
\usage{
save_figure(
  obj,
  filename,
  width = 6,
  height = 6,
  res = 600,
  formats = c("pdf", "tiff", "png", "svg"),
  font = "Arial"
)
}
\arguments{
  \item{obj}{
    要保存的图形对象。支持：无参数绘图函数；\code{ggplot} 对象；
    \pkg{ComplexHeatmap} 的 \code{Heatmap} 对象；类别为 \code{upset} 的对象；
    \pkg{grid} grob；\code{recordedplot}；数值向量、矩阵或数据框；以及
    \pkg{magick} 的 \code{magick-image} 对象。对于其他对象，函数会调用其
    \code{print()} 方法作为兜底绘制方式。传入绘图函数时，该函数应无需参数
    即可完成绘图，例如 \code{function() plot(x, y)}。
  }
  \item{filename}{
    长度为 1 的字符串，指定输出文件的基础路径，默认为无扩展名路径。
    函数会根据 \code{formats} 自动追加 \code{.pdf}、\code{.tiff}、
    \code{.png} 或 \code{.svg}。例如 \code{"figures/result"} 与
    \code{formats = c("pdf", "png")} 会生成 \code{figures/result.pdf}
    和 \code{figures/result.png}。目标父目录必须预先存在；函数不会自动
    创建目录。若同名文件已存在，图形设备通常会将其覆盖。
  }
  \item{width}{
    正数，默认为 \code{6}。非 \code{magick-image} 对象的输出宽度，单位为
    英寸。对于 PNG 和 TIFF，最终像素宽度约为 \code{width * res}。
    保存 \code{magick-image} 时该参数不用于调整图像尺寸。
  }
  \item{height}{
    正数，默认为 \code{6}。非 \code{magick-image} 对象的输出高度，单位为
    英寸。对于 PNG 和 TIFF，最终像素高度约为 \code{height * res}。
    保存 \code{magick-image} 时该参数不用于调整图像尺寸。
  }
  \item{res}{
    正数，默认为 \code{600}，表示 PNG 和 TIFF 文件的分辨率，单位为 DPI。
    该参数不影响 PDF、SVG 等矢量格式，也不用于调整 \code{magick-image}
    对象的分辨率。
  }
  \item{formats}{
    字符向量，默认为 \code{c("pdf", "tiff", "png", "svg")}。可包含
    \code{"pdf"}、\code{"tiff"}、\code{"png"} 和 \code{"svg"} 中的
    一种或多种格式；函数会依次生成所有选中的文件。取值区分大小写，未识别
    的值会被忽略。TIFF 使用 LZW 压缩。保存 \code{magick-image} 时需要安装
    \pkg{magick}，并由 \code{magick::image_write()} 完成格式转换。
  }
  \item{font}{
    长度为 1 的字符串，默认为 \code{"Arial"}，指定图形设备使用的字体族。
    该值传递给 PDF、TIFF、PNG 和 SVG 图形设备；系统必须能够解析所选字体，
    否则设备可能报错或使用替代字体。可根据系统环境改用
    \code{"sans"}、\code{"serif"} 等通用字体。保存
    \code{magick-image} 时不使用该参数。
  }
}
\value{
函数主要通过写入文件产生作用，通常返回 \code{NULL}。输出文件路径由
\code{filename} 与 \code{formats} 共同决定。
}
\description{
使用相应的 R 图形设备，将多种常见图形对象一次保存为 PDF、TIFF、PNG
和 SVG 中的一种或多种格式。对于 \code{magick-image} 对象，改用
\pkg{magick} 的图像写出功能。
}
\details{
普通图形对象会为每一种请求格式分别打开图形设备、绘制对象并关闭设备。
\code{ggplot}、\code{upset} 和一般对象通过 \code{print()} 绘制；
\code{Heatmap} 通过 \code{ComplexHeatmap::draw()} 绘制；grob 通过
\code{grid::grid.draw()} 绘制；记录图通过 \code{replayPlot()} 重放。

函数不会检查或创建 \code{filename} 中的父目录，也不会自动补装可选依赖。
}
\examples{
output <- tempfile()
save_figure(
  function() plot(1:10, (1:10)^2),
  output,
  width = 5,
  height = 4,
  res = 150,
  formats = "png",
  font = "sans"
)
unlink(paste0(output, ".png"))

\dontrun{
save_figure(p, "figures/figure1", formats = c("pdf", "png"))
}
}
