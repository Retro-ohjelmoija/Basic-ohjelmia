10 rem (c) 2025 retro-ohjelmoija

100 print chr$(147)
110 dx = -1 : dy = -1 : x = 20 : y = 12
200 rem ** paalooppi alkaa **
210 ex = x : ey = y
220 x = x + dx
230 if x > 40 then x = 39 : dx = -dx
240 if x < 1 then x = 2 : dx = -dx
250 y = y + dy
260 if y > 25 then y = 24 : dy = -dy
270 if y < 1 then y = 2 : dy = -dy
300 gosub 1000
310 gosub 2000
330 goto 210

1000 rem vanha pallo pois
1010 poke 1024 + (ey - 1) * 40 + ex - 1, asc(" ")
1040 return

2000 rem uusi pallo paikalleen
2010 poke 1024 + (y - 1) * 40 + x - 1, 81
2040 return
