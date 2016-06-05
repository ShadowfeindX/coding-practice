#Temperature Convertor
Given the current temperature and the current temperature scale,  
calculate the temperature in the opposite scale and return the  
answer in a user-friendly string.  
Output values should be rounded to 1 decimal place.

**Example**  
For `N = "98.6 F"`, the output should be  
`Temp_Convert(N) = "98.6 degrees Fahrenheit is 37.0 degrees Celcius."`

- [input] string N
The current temperature and scale

*Constrants:*    
`−459.67 <= N <= 1.416833(85) x 10^32`

- [output] string
The original temp and scale followed by the new temp and scale

###Challenge
Also provide conversion to and from Kelvin.