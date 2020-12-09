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

end
