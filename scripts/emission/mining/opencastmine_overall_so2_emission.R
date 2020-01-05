opencastmine_overall_so2_emission <- function(u, area, prod, overburden){
  # This function calculates the overall SO2 emission from opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # u = wind speed [m+1 s-1]
  # area = area of mine [km+2]
  # prod = mineral production [Mt yr-1]
  # overburden = overburden handling [mm+3 yr-1]
  # E = emission [g+1 s-1]
  E = area^0.14 * (u/(1.83 + 0.93 * u)) * ((prod/(0.48 + 0.57 * prod)) + 
                                             (overburden/(14.37 + 1.15 * overburden)))
  return(E)
}