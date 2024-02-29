# 
airtemps <- c(212, 30.3, 78, 32)
airtemps1 <- c(212.01, 30.31, 78.01, 32.01)


# so we write a function. fahr is the argument. 
# run this section to create the function (gets listed in environment)
# function will automatically  return last line, but that is not always what you want to return (say, if there is a checker line)

#' Convert temperatures from C to F
#'
#' @param celsius Temperature value in Celsius
#'
#' @return 
#' @export
#'
#' @examples
celsius_to_fahr <- function(celsius) {
  fahr <- (celsius * 9/5 + 32)
  return(fahr)
}

fahr1 <- celsius_to_fahr(airtemps1)

convert_temps <- function(fahr){
  celsius <- (fahr - 32)*5/9
  kelvin <- celsius + 273.15
  temps <- data.frame(fahr = fahr, 
                    celsius = celsius,
                    kelvin = kelvin)
  return(temps)
}

temps_df <- convert_temps(airtemps)
temps_df <- data.frame(convert_temps(seq(-100,100,10)))

## ggplot theme - changing base size of text. A default of 9 is set, so function can be run with no arguments
custom_theme <- function(base_size = 9) {
  ggplot2::theme(
    text             = ggplot2::element_text(family = 'Helvetica', 
                                             color = 'gray30', 
                                             size = base_size),
    plot.title       = ggplot2::element_text(size = ggplot2::rel(1.25), 
                                             hjust = 0.5, 
                                             face = 'bold'),
    panel.background = ggplot2::element_blank(),
    panel.border     = ggplot2::element_blank(),
    panel.grid.minor = ggplot2::element_blank(),
    panel.grid.major = ggplot2::element_line(colour = 'grey90', 
                                             linewidth = 0.25),
    legend.position  = 'right',
    legend.key       = ggplot2::element_rect(colour = NA, 
                                             fill = NA),
    axis.ticks       = ggplot2::element_blank(),
    axis.line        = ggplot2::element_blank()
  )
}

library(ggplot2)

ggplot(temps_df, mapping = aes(x = fahr, y = celsius, color = kelvin)) +
  geom_point() + ggtitle("Title!") +
  custom_theme(20) + theme(plot.title       = ggplot2::element_text(hjust = 0))
