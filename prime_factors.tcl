proc prime_factors { n prime_factors_list } {
  if { $n == 1 } {
    return $prime_factors_list
  } else {
    for {set factor 2} {$factor <= $n} {incr factor} {
      if { [expr $n % $factor] == 0 } {
        return [prime_factors [expr $n / $factor] [lappend prime_factors_list $factor]]
      }
    }
  }
}
