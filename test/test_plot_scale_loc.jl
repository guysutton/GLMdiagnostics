##############################################
# - Write tests for plot_scale_loc
##############################################

@testset "plot_scale_loc" begin

    # Test #1
    # - Test that object created by function is of type 'Plot'
    @test   typeof(plot_scale_loc(modAov)) == Plot

end # End of testing for plot_scale_loc function
