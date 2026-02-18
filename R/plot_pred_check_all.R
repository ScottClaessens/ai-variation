# function to combine posterior predictive checks
plot_pred_check_all <- function(plot_list) {
  # combine plots
  p <-
    wrap_plots(plot_list) +
    plot_layout(
      ncol = 3,
      nrow = 4,
      axis_titles = "collect"
    )
  # save
  ggsave(
    filename = "plots/posterior_predictive_check.pdf",
    plot = p,
    width = 6,
    height = 6
  )
  # return
  p
}
