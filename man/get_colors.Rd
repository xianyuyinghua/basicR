\name{get_colors}
\alias{get_colors}
\encoding{UTF-8}
\title{选择内置或扩展包中的颜色方案}
\usage{
get_colors(number = 2.1, name = NA, show = FALSE, package = NA)
}
\arguments{
  \item{number}{
    数值型，默认为 \code{2.1}。对于包内置颜色，整数部分表示颜色数量，
    完整数值表示该颜色数量下的具体方案编号。例如，\code{2.1} 表示第 1 套
    双色方案，\code{3.2} 表示第 2 套三色方案。当前内置颜色数量支持
    1--15、50、60 和 100；每种颜色数量下可用的方案数并不相同。
    当 \code{package} 指定外部调色包时，函数使用 \code{floor(number)}
    作为需要返回的颜色数量，小数部分不参与外部色板选择。
  }
  \item{name}{
    字符串或 \code{NA}，默认为 \code{NA}。当使用外部调色包时，用于指定
    调色板名称。对于 \pkg{RColorBrewer}，名称应为完整的色板名称，例如
    \code{"Set1"}；对于 \pkg{viridis}，可使用能够匹配
    \code{"magma (A)"}、\code{"inferno (B)"}、\code{"plasma (C)"}、
    \code{"viridis (D)"}、\code{"cividis (E)"}、\code{"rocket (F)"}、
    \code{"mako (G)"} 或 \code{"turbo (H)"} 的文本；对于 \pkg{ggsci}，
    可使用能够唯一匹配色板名称的文本，例如 \code{"npg"} 或
    \code{"jama"}。使用内置颜色时，该参数不参与颜色选择。
  }
  \item{show}{
    逻辑值，默认为 \code{FALSE}。设为 \code{TRUE} 时绘制颜色预览。
    预览功能依赖 \pkg{unikn}；外部色板预览还要求对应的
    \pkg{RColorBrewer}、\pkg{viridis} 或 \pkg{ggsci} 已安装。
    该过程会将当前基础图形设备背景设置为白色。
  }
  \item{package}{
    字符串或 \code{NA}，默认为 \code{NA}，用于选择颜色来源。包含
    \code{"brewer"}（忽略大小写）时使用 \pkg{RColorBrewer}；包含
    \code{"virid"} 时使用 \pkg{viridis}；包含 \code{"ggsci"} 时使用
    \pkg{ggsci}。其他值和 \code{NA} 均使用函数自带的颜色方案。
    只有选择相应外部来源时才需要安装对应扩展包。
  }
}
\value{
匹配成功时返回由十六进制颜色值组成的字符向量。内置方案不存在、外部色板
名称无效或匹配结果不唯一时，函数输出提示信息，并可能返回 \code{NULL}。
}
\description{
从函数内置颜色集合或 \pkg{RColorBrewer}、\pkg{viridis}、\pkg{ggsci}
提供的调色板中选择颜色，可选择同时显示色板预览。
}
\details{
内置颜色通过“颜色数量.方案编号”选择。例如 \code{get_colors(5.2)} 返回
第 2 套五色方案。外部色板分支使用 \code{floor(number)} 决定返回颜色数量。
\code{name} 在 \pkg{viridis} 和 \pkg{ggsci} 分支中采用文本匹配，因此应尽量
提供能够唯一识别目标色板的名称。
}
\examples{
get_colors(2.1)
get_colors(3.2)

\dontrun{
get_colors(5, name = "Set1", package = "brewer")
get_colors(6, name = "viridis", package = "viridis", show = TRUE)
get_colors(8, name = "npg", package = "ggsci")
}
}
