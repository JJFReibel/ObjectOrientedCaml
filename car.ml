(*
   MIT License

Copyright (c) 2020 Jean-Jacques François Reibel

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
*)

(* This is Caml, the precursor to OCaml. Not to be confused with CAML. *)
type car = {mutable wheels: int; mutable doors: int; mutable cylinders: int};;
let addWheels (myCar: car) (wheelsIn: int) = myCar.wheels <- myCar.wheels + wheelsIn;;
let addDoors (myCar: car) (doorsIn: int) = myCar.doors <- myCar.doors + doorsIn;;
let addCylinders (myCar: car) (cylindersIn: int) = myCar.cylinders <- myCar.cylinders + cylindersIn;;
let deleteWheels (myCar: car) (wheelsIn: int) = myCar.wheels <- myCar.wheels - wheelsIn;;
let deleteDoors (myCar: car) (doorsIn: int) = myCar.doors <- myCar.doors - doorsIn;;
let deleteCylinders (myCar: car) (cylindersIn: int) = myCar.cylinders <- myCar.cylinders - cylindersIn;;
let printInfo (myCar: car) = 
  print_string "Wheel check: ";
  print_endline (string_of_int myCar.wheels);
  print_string"Door check: ";
  print_endline (string_of_int myCar.doors);
  print_string"Cylinder check: ";
  print_endline (string_of_int myCar.cylinders);
  print_endline "";;
  
print_endline "Creating car.";;
let subaru = {wheels=4; doors=4; cylinders=4};; 
printInfo subaru;;
print_endline "Adding wheel directly to car object.";; 
subaru.wheels <- 5;;
printInfo subaru;;
print_endline "Removing wheel using object method.";; 
deleteWheels subaru 1;;
printInfo subaru;; 

  