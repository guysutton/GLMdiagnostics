module GLMdiagnostics

# Separate .jl files for each function (have to manually add file, otherwise error)

# Function #1: Plot quantile-quantile plot (qqplot)
include("plot_qq.jl")
export plot_qq

end
