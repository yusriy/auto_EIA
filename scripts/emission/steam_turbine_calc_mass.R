steam_turbine_calc_mass <- function(h_inlet, h_outlet, W, Q = 0){
  # This function calculates steam mass 
  # m = steam mass flow rate [kg]
  # h_inlet = enthalpy inlet [J  kg-1]
  # h_outlet = enthalpy outlet [J  kg-1]
  # W = work [J]
  # Q = heat energy [J]
  m <- (Q - W) / (h_outlet - h_inlet)
  return(m)
}