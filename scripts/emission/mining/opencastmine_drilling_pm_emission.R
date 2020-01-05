opencastmine_drilling_pm_emission <- function(moisture,silt,u,d,f){
  # This function calculates the overall PM emission from haul road of opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # moisture = moisture content of dust [%]; e.g. 18.5%
  # silt = silt content [%]; e.g. 32%
  # u = wind speed [m+1 s-1]; e.g. 1 ms-1
  # d = hole diameter [mm]; e.g. 150 mm
  # f = frequency [no. holes day-1]; e.g. 11 holes
  # E = emission [g+1 s-1]
  E = 0.0325 * (((100-moisture)*silt*u)/((100-silt)*moisture))^0.1 * d * f^0.3
  return(E)
}