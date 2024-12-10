

#Plotting exploaratory figure function

Plot_explor <- function(Mass_flipper_data){
  Mass_flipper_data %>%
    ggplot(aes(x = body_mass_g, y = flipper_length_mm)) +
    geom_point() +
    labs(x = "Penguin mass (g)", y = "Flipper lenght (mm)", title = "Body mass vs flipper length in palmers Penguins") +
    theme_bw()
}


#Plotting function for the results
Plot_point<- function (Mass_flipper_data){
  Mass_flipper_data %>%
    ggplot(aes(x= body_mass_g,y = flipper_length_mm))+
    geom_point()+
    geom_smooth(method = "lm", color = "black", linewidth = 0.8)+
    labs (x= "Body Mass (mm)", y = "Flipper Length (mm)", title="Body mass vs flipper length in palmers Penguins", caption = "Grey Shaded Area indicates 95% CI")+
    theme_bw()
}


