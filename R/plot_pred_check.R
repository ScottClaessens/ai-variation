# plot posterior predictive check for baseline models
plot_pred_check <- function(fit_baseline, outcome) {
  pp_check(
    object = fit_baseline,
    type = "bars",
    ndraws = 20,
    size = 0.5
  ) +
    scale_x_continuous(
      name = str_to_sentence(str_replace(outcome, "_", " ")),
      breaks = 1:7
    ) +
    theme(legend.position = "none")
}
