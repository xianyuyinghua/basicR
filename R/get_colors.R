get_colors <- function(number = 2.1,name = NA, show = FALSE, package = NA){
  # 有自己制作色系、RColorBrewer包、viridis包、ggsci包色系
  
  colors <- list(list(c("#F89FA8")),   # 单色系
                 list(c("#F89FA8","#F9E9A4"),
                      c("#9FC9DF","#F1E1C7"),
                      c("#C3CEE4","#E8D6B6"),
                      c("#8FC9E2","#ECC97F"), # 蓝黄色系
                      c("#EFD496","#9BB89C"),
                      c("#F7EBC6","#CDE0C7"), # 黄绿色系
                      c("#8CA3C3","#D2ADA8"),
                      c("#AEB6CF","#E8D3D2"), # 蓝绿色系
                      c("#A32A31","#407BD0"),
                      c("#C9352B","#339DB5"), # 10 
                      c("#C9352B","#339DB5"),
                      c("#E44A33","#4DBAD6"),
                      c("#DFB6BC","#B7D0EA"),
                      c("#F4E7E8","#E3EAF1"), # 红蓝色系
                      c("#B11927","#C27C3B"),
                      c("#EBD2D6","#F1E4D3"),
                      c("#B291B5","#3BA997"),
                      c("#D6AFB9","#7E9BB7"), # 红绿色系
                      c("#9E9E9E","#F5C96B"),
                      c("#F89FA8","#F9E9A4"), # 红黄色系
                      c("#999A9E","#8A7197"), # 绿绿色系
                      c("#62B197","#E18E6D"),
                      c("#B8DDBC","#F0A780"), # 绿橙色系
                      c("#97C8AF","#96B6D8")  # 绿蓝色系
                 ),   # 双色系
                 list(c("#EA8379","#7DAEE0","#B395BD"), # 红蓝绿
                      c("#299D8F","#E9C46A","#D87659"), # 绿黄红
                      c("#EF767A","#456990","#48C0AA"), # 红紫绿
                      c("#828D93","#EDB176","#78C2E0"), # 绿橙蓝
                      c("#82969D","#CC312D","#F7EDCA"), # 绿红黄
                      c("#D87070","#7D9BE5","#F5D78F"), # 红蓝黄
                      c("#CB7E83","#95BAA6","#76A2BB"), # 红红绿
                      c("#2B6688","#F1A93B","#A8ACB9"), # 紫橙绿
                      c("#C24976","#469393","#84C2AE"), # 红绿绿
                      c("#F4E4EB","#CDE4E4","#F2F9F6"), # 红绿白 10
                      c("#F4E4EB","#CDE4E4","#F2F9F6"), # 红绿白
                      c("#AFB6D2","#E6EEF6","#E4DBE8"), # 红白红
                      c("#9392BE","#D0E7ED","#D5E4A8"), # 红蓝橙
                      c("#F1C89A","#E79397","#A797DA"), # 橙红蓝
                      c("#E1C855","#E07B54","#51B1B7"), # 橙红绿
                      c("#A5C496","#C7988C","#8891DB")  # 绿红蓝
                 ),   # 三色系
                 list(c("#55B7E6","#193E8F","#E53528","#F09739"), # 蓝紫红橙
                      c("#A4C8D9","#6C96CC","#EDAE92","#C92321"), # 蓝紫粉红
                      c("#DB432C","#438870","#838AAF","#C4B797"), # 红绿蓝粉
                      c("#D3D3D3","#DEBF80","#DCCD5B","#6179A7"), # 粉橙黄绿
                      c("#66529F","#A37E7D","#BF9895","#DAB2B2"), # 紫墨绿翠
                      c("#979BBA","#AFB6D2","#C6DCE2","#E6EEF6"), # 红粉淡白
                      c("#ABBBBF","#D7DDDF","#967A8D","#E4DBE8"), # 红粉墨白
                      c("#9BC985","#F7D58B","#B595BF","#797BB7")  # 绿黄粉紫
                 ),   # 四色系
                 list(c("#55B7E6","#56BA77","#ED6E69","#9FAA3F","#BD79B6"), # 蓝绿红橙粉
                      c("#9281DD","#B7617D","#E4B112","#B7DB29","#159FD7"), # 蓝绿橙黄紫
                      c("#1E469B","#2681B6","#35B9C5","#96D2B0","#F9F8CA"), # 紫蓝红绿黄
                      c("#982C2C","#C74647","#F8984F","#F3D78A","#F2F1E6"), # 红红橙黄白
                      c("#FDF6A4","#EFE7F3","#E4F2F3","#E9EDDB","#F7E6E1"), # 黄蓝白绿粉
                      c("#D9D9D9","#547DB1","#719DC9","#C6D6EA","#DEE7F3"), # 粉紫紫蓝蓝
                      c("#3C224B","#6D4E7E","#A786BA","#D3C3D0","#F2E0F3"), # 黑紫蓝粉白
                      c("#F1DBE7","#E0F1F7","#DBD8E9","#DEECD9","#D0D2D4"), # 粉白蓝绿粉
                      c("#C6B3D3","#ED9F9B","#80BA8A","#9CD1CB","#6BB7CA"), # 蓝绿绿粉蓝
                      c("#9DD0C7","#9180AC","#D9BDDB","#E58579","#8AB1D2"), # 绿紫白红蓝 10
                      c("#9DD0C7","#9180AC","#D9BDDB","#E58579","#8AB1D2"), # 绿紫白红蓝
                      c("#EEC79F","#F1DFA4","#74B69F","#A6CDE4","#E2C8D8"), # 橙黄绿蓝粉
                      c("#CC88B0","#998DB7","#DBE0ED","#87B5B2","#F4CEB4")  # 粉紫蓝粉黄
                 ), # 五色系
                 list(c("#427AB2","#F09148","#FF9896","#DBDB8D","#C59D94","#AFC7E8"), # 紫橙粉黄绿蓝
                      c("#EEA599","#FAC795","#FFE9BE","#E3EDE0","#ABD3E1","#92B4C8"), # 红橙黄粉紫绿
                      c("#930E14","#F8D5E4","#96D1C6","#BAD65D","#EE7D6B","#C8C1DE"), # 墨白绿粉橙蓝
                      c("#D3D3D3","#DEBF80","#DCCD5B","#73AD96","#5F9069","#375637"), # 粉橙黄绿绿绿
                      c("#343434","#DFE9F4","#245297","#85C17E","#CDE8C3","#62AA67"), # 墨蓝紫绿白绿
                      c("#999999","#F3F8FE","#537CB0","#A4D09D","#D9EED3","#83BC8B"), # 灰蓝紫绿白绿
                      c("#66BC98","#AAD09D","#E3EA96","#FCDC89","#E26844","#8A233F"), # 绿绿黄黄绿墨
                      c("#D2BCDE","#6E348C","#AB521C","#ED7C72","#B5D4E9","#1D75B5"), # 蓝紫绿绿蓝紫
                      c("#F6C63C","#EFA143","#D96558","#B43970","#692F7C","#282A62"), # 黄橙绿绿紫墨
                      c("#C85D4D","#F0B79A","#FAE7D9","#619DB8","#AECDD7","#E3EEEF"), # 绿绿绿蓝蓝蓝 10
                      c("#C85D4D","#F0B79A","#FAE7D9","#619DB8","#AECDD7","#E3EEEF"), # 绿绿绿蓝蓝蓝
                      c("#9EC1D4","#DDF1F3","#ECF4DD","#FFF7AC","#ECB477","#E87651"), # 蓝蓝粉黄绿绿
                      c("#712274","#BC388B","#DF639C","#EC9AB4","#EFB1BB","#F5D4CE"), # 红红红粉粉粉
                      c("#2D66A5","#4B8DBC","#97CEBF","#BFE3C1","#DBEDD3","#E5F3DD"), # 紫紫粉绿绿绿
                      c("#E1703C","#F2BF9E","#4091CF","#A1C6E7","#8CBA54","#CCDDAE"), # 绿绿蓝蓝绿绿
                      c("#992F87","#C9A2C6","#552E81","#A695BD","#EFAE42","#F9DAA6")  # 红粉紫粉橙黄
                 ), # 六色系
                 list(c("#BFC1A5","#F6C6F6","#98CAF7","#FFF8AB","#CDC0DB","#A0DDAF","#F8D3A9"), # 绿蓝蓝黄粉绿绿
                      c("#8CA3C3","#F8DAD5","#F8D7D9","#F1B4B3","#EDA4A5","#EB9092","#E7797A"), # 粉粉粉绿绿绿绿
                      c("#818181","#2A5522","#BF9895","#E07E35","#F2CCA0","#A9C4E6","#D1392B")  # 灰绿灰绿绿蓝绿
                 ), # 七色系
                 list(c("#DE7833","#912C2C","#F2BB6B","#C2ABC8","#329845","#AED185","#276C9E","#A3C9D5")
                 ), # 八色系
                 list(c("#43978F","#9EC4BE","#ABD0F1","#DCE9F4","#E56F5E","#F19685","#F6C957","#FFB77F","#FBE8D5") 
                 ), # 九色系
                 list(c("#1f77b4","#ff7f0e","#2ca02c","#e377c2","#d62728","#9467bd","#8c564b","#7f7f7f","#bcbd22","#17becf")
                 ), # 十色系
                 list(c("#1f77b4","#ff7f0e","#2ca02c","#e377c2","#d62728","#9467bd","#8c564b","#7f7f7f","#bcbd22","#17becf","#aec7e8")
                 ), # 十一色系
                 list(c("#1f77b4","#ff7f0e","#2ca02c","#e377c2","#d62728","#9467bd","#8c564b","#7f7f7f","#bcbd22","#17becf","#ffbb78","#aec7e8")
                 ), # 十二色系
                 list(c("#1f77b4","#ff7f0e","#2ca02c","#e377c2","#d62728","#9467bd","#8c564b","#7f7f7f","#bcbd22","#17becf","#ffbb78","#aec7e8","#98df8a")
                 ), # 十三色系
                 list(c("#e41a1c","#377eb8","#4daf4a","#984ea3","#ff7f00","#ffff33","#a65628","#f781bf","#999999","#66c2a5","#fc8d62","#8da0cb","#e78ac3","#a6d854")
                 ), # 十四色系
                 list(c("#1b9e77","#d95f02","#7570b3","#e7298a","#66a61e","#e6ab02","#a6761d","#666666","#1f78b4","#b2df8a","#33a02c","#fb9a99","#e31a1c","#fdbf6f","#ff7f00")
                 ), # 十五色系
                 list(c("#1f77b4FF","#ff7f0eFF","#2ca02cFF","#d62728FF","#9467bdFF","#8c564bFF","#e377c2FF","#7f7f7fFF","#bcbd22FF","#17becfFF",
                        "#aec7e8FF","#ffbb78FF","#98df8aFF","#ff9896FF","#c5b0d5FF","#c49c94FF","#f7b6d2FF","#c7c7c7FF","#dbdb8dFF","#9edae5FF",
                        "#393b79FF","#5254a3FF","#6b6ecfFF","#9c9edeFF","#637939FF","#8ca252FF","#b5cf6bFF","#cedb9cFF","#8c6d31FF","#bd9e39FF",
                        "#e7ba52FF","#e7cb94FF","#843c39FF","#ad494aFF","#d6616bFF","#e7969cFF","#7b4173FF","#a55194FF","#ce6dbdFF","#de9ed6FF",
                        "#6b6b6bFF","#9e9e9eFF","#bdbdbdFF","#d9d9d9FF","#3182bdFF","#6baed6FF","#9ecae1FF","#c6dbefFF","#e6550dFF","#fd8d3cFF")
                      
                 ), # 50色系
                 list(c("#4DBBD5FF","#E64B35FF","#00A087FF","#3C5488FF","#925E9FFF","#91D1C2FF","#8491B4FF","#7E6148FF","#0072B5FF","#E18727FF",
                        "#B09C85FF","#20854EFF","#6F99ADFF","#FFDC91FF","#00468BFF","#FDAF91FF","#B24745FF","#6699FFFF","#99991EFF","#FFCCCCFF",
                        "#358000FF","#99CCFFFF","#FFCC00FF","#8C564BFF","#BCBD22FF","#996600FF","#5CB85CFF","#F39B7FFF","#CE3D32FF","#749B58FF",
                        "#466983FF","#F0E685FF","#D595A7FF","#924822FF","#7A65A5FF","#C75127FF","#FFA319FF","#8A9045FF","#8F3931FF","#00AF66FF",
                        "#748AA6FF","#D0DFE6FF","#C71000FF","#008EA0FF","#8A4198FF","#D5E4A2FF","#5A9599FF","#FF6348FF","#B7E4F9FF","#FF95A8FF",
                        "#526E2DFF","#FB6467FF","#E89242FF","#69C8ECFF","#917C5DFF","#FED439FF","#709AE1FF","#D2AF81FF","#FD7446FF","#98df8aFF")
                      
                 ), # 60色系
                 list(c("#1f77b4FF","#ff7f0eFF","#2ca02cFF","#d62728FF","#9467bdFF","#8c564bFF","#e377c2FF","#7f7f7fFF","#bcbd22FF","#17becfFF",
                        "#aec7e8FF","#ffbb78FF","#98df8aFF","#ff9896FF","#c5b0d5FF","#c49c94FF","#f7b6d2FF","#c7c7c7FF","#dbdb8dFF","#9edae5FF",
                        "#393b79FF","#5254a3FF","#6b6ecfFF","#9c9edeFF","#637939FF","#8ca252FF","#b5cf6bFF","#cedb9cFF","#8c6d31FF","#bd9e39FF",
                        "#e7ba52FF","#e7cb94FF","#843c39FF","#ad494aFF","#d6616bFF","#e7969cFF","#7b4173FF","#a55194FF","#ce6dbdFF","#de9ed6FF",
                        "#6b6b6bFF","#9e9e9eFF","#bdbdbdFF","#d9d9d9FF","#3182bdFF","#6baed6FF","#9ecae1FF","#c6dbefFF","#e6550dFF","#fd8d3cFF",
                        "#fdae6bFF","#fdd0a2FF","#31a354FF","#74c476FF","#a1d99bFF","#c7e9c0FF","#756bb1FF","#9e9ac8FF","#bcbddcFF","#dadaebFF",
                        "#636363FF","#969696FF","#bdbdbdFF","#d9d9d9FF","#8c564bFF","#c49c94FF","#e377c2FF","#f7b6d2FF","#7f7f7fFF","#c7c7c7FF",
                        "#bcbd22FF","#dbdb8dFF","#17becfFF","#9edae5FF","#393b79FF","#5254a3FF","#6b6ecfFF","#9c9edeFF","#637939FF","#8ca252FF",
                        "#b5cf6bFF","#cedb9cFF","#8c6d31FF","#bd9e39FF","#e7ba52FF","#e7cb94FF","#843c39FF","#ad494aFF","#d6616bFF","#e7969cFF",
                        "#7b4173FF","#a55194FF","#ce6dbdFF","#de9ed6FF","#6b6b6bFF","#9e9e9eFF","#bdbdbdFF","#d9d9d9FF","#3182bdFF","#6baed6FF")
                 ) # 100色系
                 
                 
  )
  # colors number
  colors_number <- floor(number)
  
  # name colors
  colors_length <- c(1:15,50,60,100)
  colors <- setNames(colors,paste0("color_",colors_length))
  for(i in colors_length){
    colors[[paste0("color_",i)]] <- setNames(colors[[paste0("color_",i)]],paste0(i,".",1:length(colors[[paste0("color_",i)]])))
  }
  
  
  
  # main
  if( grepl("brewer",tolower(package)) ){
    # RColorBrewer 包
    if(show){
      par(bg = "white")
      RColorBrewer::display.brewer.all(type = "all")
      if(!is.na(name) & name %in% rownames(RColorBrewer::brewer.pal.info)){
        unikn::seecol(RColorBrewer::brewer.pal(colors_number, name), main = name, grid = F)
      }else if(!is.na(name)){
        cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'RColorBrewer'","\033[0m","\n")
      }
    }
    
    if(!is.na(name) & name %in% rownames(RColorBrewer::brewer.pal.info) ){
      return(RColorBrewer::brewer.pal(colors_number,name))
    }else if(!is.na(name)){
      cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'RColorBrewer'","\033[0m","\n")
    }
    
  }else if( grepl("virid",tolower(package))  ){
    # viridis 包
    viridis_names <- c("magma (A)","inferno (B)","plasma (C)","viridis (D)","cividis (E)","rocket (F)","mako (G)","turbo (H)")
    
    
    viridis_palettes <- list(`magma (A)` = viridis::magma,
                             `inferno (B)` = viridis::inferno,
                             `plasma (C)` = viridis::plasma,
                             `viridis (D)` = viridis::viridis,
                             `cividis (E)` = viridis::cividis,
                             `rocket (F)` = viridis::rocket,
                             `mako (G)` = viridis::mako,
                             `turbo (H)` = viridis::turbo
    )
    if(show){
      viridis_colors <- list(viridis::magma(100),
                             viridis::inferno(100),
                             viridis::plasma(100),
                             viridis::viridis(100),
                             viridis::cividis(100),
                             viridis::rocket(100),
                             viridis::mako(100),
                             viridis::turbo(100)
      )
      viridis_colors <- setNames(viridis_colors,viridis_names)
      
      par(bg = "white")
      unikn::seecol(viridis_colors,pal_names = viridis_names,grid = F)
      
      if(!is.na(name) & any(grepl(name,viridis_names)) ) {
        viridis_name <- grep(name,viridis_names,value = T)
        par(bg = "white")
        unikn::seecol(viridis_colors[[viridis_name]], main = viridis_name, grid = F)
      }else if(!is.na(name)){
        cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'viridis'","\033[0m","\n")
      }
    }
    
    if(!is.na(name) & any(grepl(name,viridis_names))){
      viridis_name <- grep(name,viridis_names,value = T)
      return( viridis_palettes[[viridis_name]](colors_number) )
    }else if(!is.na(name)){
      cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'viridis'","\033[0m","\n")
    }
    
  }else if( grepl("ggsci",tolower(package)) ){
    # ggsci 包
    ggsci_palettes <- list(npg = ggsci::pal_npg,
                           aaas = ggsci::pal_aaas,
                           nejm = ggsci::pal_nejm,
                           lancet = ggsci::pal_lancet,
                           jama = ggsci::pal_jama,
                           bmj = ggsci::pal_bmj,
                           jco = ggsci::pal_jco,
                           ucscgb = ggsci::pal_ucscgb,
                           d3 = ggsci::pal_d3,
                           observable = ggsci::pal_observable,
                           locuszoom = ggsci::pal_locuszoom,
                           igv = ggsci::pal_igv,
                           cosmic = ggsci::pal_cosmic,
                           uchicago = ggsci::pal_uchicago,
                           startrek = ggsci::pal_startrek,
                           tron = ggsci::pal_tron,
                           futurama = ggsci::pal_futurama,
                           rickandmorty = ggsci::pal_rickandmorty,
                           simpsons = ggsci::pal_simpsons,
                           flatui = ggsci::pal_flatui,
                           frontiers = ggsci::pal_frontiers,
                           gsea = ggsci::pal_gsea,
                           bs5 = ggsci::pal_bs5,
                           material = ggsci::pal_material,
                           tw3 = ggsci::pal_tw3
    )
    ggsci_colors <- list(`npg:nrc` = ggsci::pal_npg("nrc")(10),
                         `aaas:default` = ggsci::pal_aaas("default")(10),
                         `nejm:default` = ggsci::pal_nejm("default")(8),
                         `lancet:lanonc` = ggsci::pal_lancet("lanonc")(9),
                         `jama:default` = ggsci::pal_jama("default")(7),
                         `bmj:default` = ggsci::pal_bmj("default")(9),
                         `jco:default` = ggsci::pal_jco("default")(10),
                         `ucscgb:default` = ggsci::pal_ucscgb("default")(26),
                         `d3:category10` = ggsci::pal_d3("category10")(10),
                         `d3:category20a` = ggsci::pal_d3("category20")(20),
                         `d3:category20b` = ggsci::pal_d3("category20b")(20),
                         `d3:category20c` = ggsci::pal_d3("category20c")(20),
                         `observable:observable10` = ggsci::pal_observable("observable10")(10),
                         `locuszoom:default` = ggsci::pal_locuszoom("default")(7),
                         `igv:default` = ggsci::pal_igv("default")(51),
                         `igv:alternating` = ggsci::pal_igv("alternating")(2),
                         `cosmic:hallmarks_light` = ggsci::pal_cosmic("hallmarks_light")(10),
                         `cosmic:hallmarks_dark` = ggsci::pal_cosmic("hallmarks_dark")(10),
                         `cosmic:signature_substitutions` = ggsci::pal_cosmic("signature_substitutions")(6),
                         `uchicago:default` = ggsci::pal_uchicago("default")(9),
                         `uchicago:light` = ggsci::pal_uchicago("light")(9),
                         `uchicago:dark` = ggsci::pal_uchicago("dark")(9),
                         `startrek:uniform` = ggsci::pal_startrek("uniform")(7),
                         `tron:legacy` = ggsci::pal_tron("legacy")(7),
                         `futurama:planetexpress` = ggsci::pal_futurama("planetexpress")(12),
                         `rickandmorty:schwifty` = ggsci::pal_rickandmorty("schwifty")(12),
                         `simpsons:springfield` = ggsci::pal_simpsons("springfield")(16),
                         `flatui:default` = ggsci::pal_flatui("default")(10),
                         `flatui:flattastic` = ggsci::pal_flatui("flattastic")(12),
                         `flatui:aussie` = ggsci::pal_flatui("aussie")(10),
                         `frontiers:default` = ggsci::pal_frontiers("default")(10),
                         `gsea:default` = ggsci::pal_gsea("default")(12),
                         `bs5:blue` = ggsci::pal_bs5("blue")(10),
                         `bs5:indigo` = ggsci::pal_bs5("indigo")(10),
                         `bs5:purple` = ggsci::pal_bs5("purple")(10),
                         `bs5:pink` = ggsci::pal_bs5("pink")(10),
                         `bs5:red` = ggsci::pal_bs5("red")(10),
                         `bs5:orange` = ggsci::pal_bs5("orange")(10),
                         `bs5:yellow` = ggsci::pal_bs5("yellow")(10),
                         `bs5:green` = ggsci::pal_bs5("green")(10),
                         `bs5:teal` = ggsci::pal_bs5("teal")(10),
                         `bs5:cyan` = ggsci::pal_bs5("cyan")(10),
                         `bs5:gray` = ggsci::pal_bs5("gray")(10),
                         `material:red` = ggsci::pal_material("red")(10),
                         `material:pink` = ggsci::pal_material("pink")(10),
                         `material:purple` = ggsci::pal_material("purple")(10),
                         `material:deep-purple` = ggsci::pal_material("deep-purple")(10),
                         `material:indigo` = ggsci::pal_material("indigo")(10),
                         `material:blue` = ggsci::pal_material("blue")(10),
                         `material:light-blue` = ggsci::pal_material("light-blue")(10),
                         `material:cyan` = ggsci::pal_material("cyan")(10),
                         `material:teal` = ggsci::pal_material("teal")(10),
                         `material:green` = ggsci::pal_material("green")(10),
                         `material:light-green` = ggsci::pal_material("light-green")(10),
                         `material:lime` = ggsci::pal_material("lime")(10),
                         `material:yellow` = ggsci::pal_material("yellow")(10),
                         `material:amber` = ggsci::pal_material("amber")(10),
                         `material:orange` = ggsci::pal_material("orange")(10),
                         `material:deep-orange` = ggsci::pal_material("deep-orange")(10),
                         `material:brown` = ggsci::pal_material("brown")(10),
                         `material:grey` = ggsci::pal_material("grey")(10),
                         `material:blue-grey` = ggsci::pal_material("blue-grey")(10),
                         `tw3:slate` = ggsci::pal_tw3("slate")(10),
                         `tw3:gray` = ggsci::pal_tw3("gray")(10),
                         `tw3:slate` = ggsci::pal_tw3("slate")(10),
                         `tw3:zinc` = ggsci::pal_tw3("zinc")(10),
                         `tw3:neutral` = ggsci::pal_tw3("neutral")(10),
                         `tw3:stone` = ggsci::pal_tw3("stone")(10),
                         `tw3:red` = ggsci::pal_tw3("red")(10),
                         `tw3:orange` = ggsci::pal_tw3("orange")(10),
                         `tw3:amber` = ggsci::pal_tw3("amber")(10),
                         `tw3:yellow` = ggsci::pal_tw3("yellow")(10),
                         `tw3:lime` = ggsci::pal_tw3("lime")(10),
                         `tw3:green` = ggsci::pal_tw3("green")(10),
                         `tw3:emerald` = ggsci::pal_tw3("emerald")(10),
                         `tw3:teal` = ggsci::pal_tw3("teal")(10),
                         `tw3:cyan` = ggsci::pal_tw3("cyan")(10),
                         `tw3:sky` = ggsci::pal_tw3("sky")(10),
                         `tw3:blue` = ggsci::pal_tw3("blue")(10),
                         `tw3:indigo` = ggsci::pal_tw3("indigo")(10),
                         `tw3:violet` = ggsci::pal_tw3("violet")(10),
                         `tw3:purple` = ggsci::pal_tw3("purple")(10),
                         `tw3:fuchsia` = ggsci::pal_tw3("fuchsia")(10),
                         `tw3:pink` = ggsci::pal_tw3("pink")(10),
                         `tw3:rose` = ggsci::pal_tw3("rose")(10)
    )
    if(show){
      par(bg = "white")
      unikn::seecol(ggsci_colors,pal_names = names(ggsci_colors),grid = F)
      
      if(!is.na(name) & any(grepl(name,names(ggsci_colors))) ) {
        ggsci_name <- grep(name,names(ggsci_colors),value = T)
        par(bg = "white")
        lapply(ggsci_name,function(name){
          unikn::seecol(ggsci_colors[[name]], main = name, grid = F)
        })
        
      }else if(!is.na(name)){
        cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'viridis'","\033[0m","\n")
      }
      
      
    }
    
    if(!is.na(name) & any(grepl(name,names(ggsci_colors)))){
      ggsci_name <- grep(name,names(ggsci_colors),value = T)
      if(length(ggsci_name) == 1){
        colors <- ggsci_palettes[[sapply(strsplit(ggsci_name,":"),"[",1)]](sapply(strsplit(ggsci_name,":"),"[",2))(colors_number)
        return( colors )
      }else{
        cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'ggsci' or the mapping name length morn than 1.","\033[0m","\n")
      }
      
    }else if(!is.na(name)){
      cat("\n","\033[31m","The color ","\033[34m",name,"\033[31m"," not in 'ggsci'","\033[0m","\n")
    }
    
  }else{
    # 自己色系
    color_name <- paste0("color_",colors_number)
    
    if(show){
      # 显示
      par(bg = "white")
      unikn::seecol(colors[[color_name]],pal_names = names(colors[[color_name]]))
      unikn::seecol(colors[[color_name]][[as.character(number)]],main = as.character(number),grid = F)
    }
    
    if( is.null(colors[[color_name]][[as.character(number)]]) ){
      cat("\n","\033[31m","color",number,": The color library has not yet been updated with this color scheme.","\033[0m","\n")
    }else{
      return(colors[[color_name]][[as.character(number)]])
    }
  }  
}
