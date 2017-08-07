def is_leap_year(year):
    cond = [ not(year % 4), not(year % 100), not(year % 400) ]
    return (cond[0] and not cond[1]) or (cond[1] and cond[2])

