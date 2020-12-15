using GLMdiagnostics
using Test
using Distributions
using Random
using DataFrames
using StatsBase
using GLM
using Gadfly
using Statistics

##############################################
# - Simulate data and linear model
##############################################

# Source simulated linear model to test functions
include("test_simulated_model.jl")

##############################################
# - Run unit tests
##############################################

@testset "GLMdiagnostics.jl" begin

# Each function contains unit tests in its own specific .jl files
# - Source unit tests for each function

# Source tests for plot_qq function
include("test_plot_qq.jl")

# Source tests for plot_fit_res function
include("test_plot_fit_res.jl")

# Source tests for plot_scale_loc function
include("test_plot_scale_loc.jl")

end
