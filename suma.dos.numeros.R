suma.dos.numeros <- function(a,b=NA){
  
  #comprueba que hay dos parametros numericos  
  
  if (!is.na(b))
    
    return (a+b)
  
  #Separa en dos numeros antes y despues del punto
  
  x<-unlist(strsplit(toString(a),".", fixed = TRUE))
  
  #asiganamos el primer numero  
  
  n1<-strtoi(x[1], base = 0L)
  
  #asiganamos el segundo numero  
  
  n2<-strtoi(x[2], base = 0L)
  
  #la traduccion de de 0 a int da NA hay que controlarlo
  
  if (is.na(n2))
    
    n2=0
  
  return (n1+n2)
  
}