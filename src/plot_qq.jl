# Write function to automate plotting qqplot
# - Plots standard quantile-quantile plot for assessing linear model fits

function plot_qq(model)

    # Extract predicted values from model object
    pred = predict(model)

    # Extract residuals from model object
    res = GLM.residuals(model)

    # Calculate mean of residuals
    res_mean = mean(res)

    # Calculate length (n) of residuals vector
    n = length(res)

    # Calculate standardised residuals
    stdRes = (res - res_mean * ones(n)) / (std(res))

    # Define quantiles
    qx = quantile.(Normal(),
                   range(0.5,
                         stop = (n - 0.5),
                         length = (n)) / (n + 1))

    # Create plot
    p = Gadfly.plot(
                    # Add points layer
                    layer(x = qx,
                          y = sort(stdRes),
                          Geom.point),
                    # Add 1:1 line
                    layer(x = [-3,3],
                          y = [-3,3],
                          Geom.line,
                          style(line_style = [:dot])),
                    # Change plot aesthetics
                    Guide.title("Normal Q-Q plot"),
                    Guide.xlabel("Theoretical Quantiles"),
                    Guide.ylabel("Standardized residuals"))

end
