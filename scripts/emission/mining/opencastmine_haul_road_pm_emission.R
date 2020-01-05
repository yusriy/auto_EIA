opencastmine_haul_road_pm_emission <- function(moisture,silt,u,v,f,c){
  # This function calculates the overall PM emission from haul road of opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # moisture = moisture content of dust [%] e.g. 18.5%
  # silt = silt content [%]; e.g. 32%
  # u = wind speed [m+1 s-1]; e.g. 1 ms-1
  # v = average vehicle speed [m+1 s-1]; e.g. 2.5 ms-1
  # f = frequency [no. of vehicle hr-1]; e.g. 6 vehicles per hour
  # c = capacity of dump trucks [tonne]; 35 tonne
  # E = emission [g+1 m-1 s-1]
  E = ((100-moisture)/moisture)^0.8 * (silt/(100-silt))^0.1 * u^0.3 * 
    (2663 + (0.1 * (v + f*c))) * 10^-6
  return(E)
}