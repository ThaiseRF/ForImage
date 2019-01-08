# Geometric models functions
sphere <- function(d_one) { vol <- (pi * (d_one^3))/6 }

half_sphere <- function(d_one) { vol <- (pi * (d_one^3))/12 }

spheroid <- function(h, d_one) { vol <- (pi * h * (d_one^2))/6 }

cone <- function(h, d_one) { vol <- (pi * h * (d_one^2))/12 }

paraboloid <- function(h, d_one) { vol <- (pi * h * (d_one^2))/8 }

dome <- function(h, d_one) { vol <- (pi * h * (4 * (h^2) + 3 * (d_one^2)))/24 }

cylinder <- function(h, d_one) { vol <- (pi * h * (d_one^2))/4 }

ellipsoid <- function(h, d_one, d_two) { vol <- (pi * h * d_one * d_two)/6 }

elliptic_cone <- function(h, d_one, d_two) { vol <- (pi * h * d_one * d_two)/12 }

c_half_ellipsoid <- function(h, d_one, d_two) { vol <- (pi * h * d_one * d_two)/12 }

gomphonemoid <- function(h, d_one, d_two) {vol <- ((d_one * d_two)/4) * (d_one + ((pi/4) - 1) * d_two) * asin(h/(2*d_one))}

elliptic_prism <- function(h, d_one, d_two) { vol <- (pi * h * d_one * d_two)/4 }

half_elliptic_prism <- function(h, d_one, d_two) { vol <- (pi * h * d_one * d_two)/4 }

dypyramid <- function(h, length, width) { vol <- (1 * ((length * width)/2) * h)/3 }

axh <- function(area, h) { vol <- area * h}
