opencastmine_exposed_pit_pm_emission <- function(moisture,area,silt,u){
  # This function calculates the overall PM emission from exposed pit surface 
  # of opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # moisture = moisture content of dust [%]; e.g. 6.6%
  # area = area [km+2]; e.g. 0.0570 km+2
  # silt = silt content [%]; e.g. 8.8%
  # E = emission [g+1 m-2 s-1]
  E = 2.4 * ((100-moisture)/moisture)^0.8 * 
    (area * silt/(100-silt))^0.1 * (u/(4 + 66*u)) * 10^-4 
  return(E)
}