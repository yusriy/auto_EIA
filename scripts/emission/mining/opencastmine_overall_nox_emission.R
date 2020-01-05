opencastmine_overall_nox_emission <- function(u, area, prod, overburden){
  # This function calculates the overall NOx emission from opencast mines
  # Source: Chakraborty et al. (2002). Determination of the emission rate
  # from various opencast mining operations
  # u = wind speed [m+1 s-1]
  # area = area of mine [km+2]
  # prod = mineral production [Mt yr-1]
  # overburden = overburden handling [mm+3 yr-1]
  # E = emission [g+1 s-1]
  E = area^0.25 * (u/(4.3 + 32.5 * u)) * (1.5^prod + 
                                             (overburden/(0.06 + 0.08 * overburden)))
  return(E)
}