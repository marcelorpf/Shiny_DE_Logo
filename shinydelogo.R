# library(remotes)
# remotes::install_github("GuangchuangYu/hexSticker")

library(hexSticker)
library(showtext)

## Loading Google fonts (http://www.google.com/fonts)
font_add_google("Gochi Hand", "gochi")
font_add_google("Shadows Into Light", "shadows")
font_add_google("Special Elite", "speciale")
## Automatically use showtext to render text for future devices
showtext_auto()

imgurl <- "/home/marcelo/Dropbox/DE-UFPB/Shiny/Shiny_DE_Logo/logode.png"
s <- sticker(imgurl, package="",
             s_x=1.565, s_y=1, s_width=.2,
             p_size=20, p_y = 1, p_family = "speciale", p_color = "blue2",
             h_color = "black", h_fill = "skyblue3", h_size = 1.2,
             spotlight = TRUE, l_alpha = .5,
             url = "http://shiny.de.ufpb.br", u_y = 0.05, u_size = 12, u_family = "speciale",
             filename="/home/marcelo/Dropbox/DE-UFPB/Shiny/Shiny_DE_Logo/imgfile.png")
s = s+geom_text(aes(x = .85, y = 1, label = ">runApp(", family = "speciale"), size = 62, angle = 0)
s = s+geom_text(aes(x = 1.715, y = 1, label = ")", family = "speciale"), size = 62, angle = 0)
s
ggsave("/home/marcelo/Dropbox/DE-UFPB/Shiny/Shiny_DE_Logo/logoshinyde.png",
       plot = s, bg = "transparent", width = 858*0.01042, height = 551*0.01042,
       device = "png")
