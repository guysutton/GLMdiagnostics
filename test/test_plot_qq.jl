##############################################
# - Write tests for plot_qq
##############################################

@testset "plot_qq" begin

    # Test #1
    # - Test that object created by function is of type 'Plot'
    @test   typeof(plot_qq(modAov)) == Plot

end # End of testing for plot_qq function
