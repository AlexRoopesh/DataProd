library(UsingR)
data(cars)

shinyServer(
  function(input, output) {
    output$newPlot <- renderPlot({
      plot(cars$speed, cars$dist,  xlab='Speed', ylab="Time to stop")
      m1 <- lm(cars$dist~cars$speed)
      abline(m1, col="red", lwd=4)
      sp <- input$sp
      lines(c(sp, sp), c(0, 100),col="blue",lwd=4)
      text(15, 120, paste(" Please adjust slider to see the fitted value and the residual error at the chosen speed"))
      text(6, 75, paste("Speed = ", sp))
      text(6, 65, paste("Resid = ", round(resid(m1)[as.numeric(sp)], 2)))
      text(6, 55, paste("Fitted value = ", round(fitted.values(m1)[as.numeric(sp)], 2)))
    })
    
  }
)