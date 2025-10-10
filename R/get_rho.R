get_rho <- function(ind, nm, digs = 2){
  
  out <- round(with(mape_meep_rho, {rho[indicator == ind & name == nm]}),2)
  
  return(out)
}