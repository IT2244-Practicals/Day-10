
Read three numbers ( a,b,c ) from the user and store then into 
three variables. Find the LCM from the first two numbers(a,b) and the GCM for the 
second two numbers(b,c)

 
echo "Enter a: "
read a
echo "Enter b: "
read b
echo "Enter c: "
read c
x=$a
y=$b
while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
done
gcd_ab=$x

lcm_ab=$(( (a * b) / gcd_ab ))


x=$b
y=$c
while [ $y -ne 0 ]; do
    temp=$y
    y=$((x % y))
    x=$temp
done
gcd_bc=$x

echo "LCM of $a and $b is: $lcm_ab"
echo "GCD of $b and $c is: $gcd_bc"

//output

Enter a:
6
Enter b:
3
Enter c:
8
LCM of 6 and 3 is: 6
GCD of 3 and 8 is: 1
