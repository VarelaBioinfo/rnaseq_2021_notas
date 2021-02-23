library("sessioninfo")
library("here")
library("ggplot2")

## Hello world
print("Soy Alfredo")

# Crear directorio para las figuras
dir.create(here::here("figuras"), showWarnings = FALSE)

# Haver una imagen de ejemplo
pdf(here::here("figuras ","mtcars_gear_vs_mpg.pdf"), useDingbats= FALSE)
ggplot(mtcars, aes(x = gear, y =mpg))+ geom_point()
dev.off()
# Para reproducir mi codigo
options(width=120)
sessioninfo::sesion_info()

