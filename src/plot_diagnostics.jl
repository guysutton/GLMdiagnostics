# Write function to automate plotting combined diagnostics plots
# - Plots all three standard plots for assessing linear model fits

function plot_diagnostics(model)

    # Set default plot size
    Gadfly.set_default_plot_size(21Gadfly.cm, 8Gadfly.cm)

    # Source functions to plot inidividual diagnostics plots
    include("plot_qq.jl")
    include("plot_fit_res.jl")
    include("plot_scale_loc.jl")

    # Make individual diagnostics plots
    # - These plots are the equivalent of calling plot(...) on a
    #   linear model (e.g. lm, ANOVA) in R.
    p1 = plot_qq(model)
    p2 = plot_fit_res(model)
    p3 = plot_scale_loc(model)

    # Plot all three plots in a single graph
    all_plots = Compose.hstack(p1, p2, p3)

end
