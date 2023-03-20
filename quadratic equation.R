quadratic_roots <- function(a, b, c) {
  # Calculate the discriminant
  discriminant <- b^2 - 4*a*c
  if (discriminant == 0){
    return((-b + sqrt(discriminant))/(2*a))
  }
  # Check if the discriminant is negative, indicating imaginary roots
  else if(discriminant < 0) {
    # Calculate the real and imaginary parts of the roots
    real_part <- -b/(2*a)
    imaginary_part <- sqrt(abs(discriminant))/(2*a)
    
    # Return the roots in complex form
    return(c(complex(real = real_part, imaginary = imaginary_part), complex(real = real_part, imaginary = -imaginary_part)))
  } else {
    # Calculate the real roots
    root1 <- (-b + sqrt(discriminant))/(2*a)
    root2 <- (-b - sqrt(discriminant))/(2*a)
    
    # Return the roots
    return(c(root1, root2))
  }
}

print(quadratic_roots(1,-2,3))
