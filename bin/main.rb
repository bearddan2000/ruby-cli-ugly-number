#!/usr/bin/env ruby

#This function divides a by greatest divisible power of b*/
def maxDivide(a, b)
  while (a % b == 0)
      a /= b
  end
  return a
end

#Function to check if a number is ugly or not */
def isUgly(no)
  no = maxDivide(no,2)
  no = maxDivide(no,3)
  no = maxDivide(no,5)

  return (no == 1)
end

#Function to get the nth ugly number*/
def getNthUglyNo(n)
  i = 1;
  count = 1;
#ugly number count */

#Check for all integers untill ugly count becomes n*/
  while (n > count)
      i+=1;
      if (isUgly(i) == true)
	    count+=1;
	  end
  end
  return i;
end

#Driver program to test above functions */
def main
  i = 10;
  puts("[INPUT] %d" % i);
  o = getNthUglyNo(i);
  puts ("[OUTPUT] %d" % o);
end
main;
