#'  millis_theme
#'
#'  This theme matches the quarto header
#'  I USE GGPLOT AND BUILD ON THEME MINIMAL

#' @return Theme to match the fonts
#' @export

millis_theme <- function(base_size = 11,
                         base_family = "Century Gothic", # Make sure you have the font accessible, maybe you´ll need to intall it at your PC
                         base_line_size = base_size / 120,
                         base_rect_size = base_size / 120){

  safe_colorblind_palette <- c("#88CCEE", "#CC6677", "#DDCC77", "#117733", "#332288", "#AA4499", "#44AA99", "#999933", "#882255", "#661100", "#6699CC", "#888888")
  list(
    ggplot2::theme_minimal(
      base_size = base_size,
      base_family = base_family,
      base_line_size = base_line_size) %+replace%

      ggplot2::theme(
        plot.title = element_text(color = "black", size = 14, face = "plain", hjust = 0.5),
        axis.title = element_text(color = "black", size = 9),
        axis.text = element_text(color = "#5E5E5E", size = 9),

        panel.grid.major = element_line(color = "#5E5E5E", linetype = 2, size = rel(4)),
        panel.grid.minor = element_line(color = "#5E5E5E", linetype = 2, size = rel(4)),
        panel.background = element_rect(fill = NA, colour = NA),
        plot.background = element_rect(fill = NA, colour = NA),

        plot.caption = element_text(color = "#5E5E5E", size = 11, face = "italic", hjust = 1), # Smaller and italic

        complete = TRUE #complete theme object
      ),
    ggplot2::scale_color_manual(values = safe_colorblind_palette),
    ggplot2::scale_fill_manual(values = safe_colorblind_palette))}


