module GLMdiagnostics

import
    GLM,
    Gadfly,
    Distributions,
    Random,
    StatsModels,
    StatsBase,
    Statistics

# Separate .jl files for each function (have to manually add file, otherwise error)

# Function #1: Plot quantile-quantile plot (qqplot)
include("plot_qq.jl")
export plot_qq

# Function #2: Plot fitted versus residuals plot
include("plot_fit_res.jl")
export plot_fit_res

# Function #3: Plot scale-location plot
include("plot_scale_loc.jl")
export plot_scale_loc

end
