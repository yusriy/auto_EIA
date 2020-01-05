opencastmine_overall_pm_emission <- function(u, area, prod, overburden){
  # This function calculates the overall PM emission from opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # u = wind speed [m+1 s-1]
  # area = area of mine [km+2]
  # prod = mineral production [Mt yr-1]
  # overburden = overburden handling [mm+3 yr-1]
  # E = emission [g+1 s-1]
  E = u^0.14 * area^0.2 * (9.7 + (0.01 * prod)) + (overburden/(4 + (0.3 * overburden)))
  return(E)
  }