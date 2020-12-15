##############################################
# - Write tests for plot_fit_res
##############################################

@testset "plot_fit_res" begin

    # Test #1
    # - Test that object created by function is of type 'Plot'
    @test   typeof(plot_fit_res(modAov)) == Plot

end # End of testing for plot_fit_res function
