(***********************************)
(* Part 1: Non-Recursive Functions *)
(***********************************)

let rev_tup tup = let (a,b,c) = tup in (c,b,a)

let is_odd x = if x mod 2 = 0 then false else true

let area x y = let (x1, x2) = x in let (y1, y2) = y in abs((x1 - y1) * (x2 - y2))

let volume x y = let (x1, x2, x3) = x in let (y1, y2, y3) = y in abs((x1 - y1) * (x2 - y2) * (x3 - y3))

(*******************************)
(* Part 2: Recursive Functions *)
(*******************************)

let rec fibonacci n = if n = 1 then 1 else if n = 0 then 0 else fibonacci(n-1) + fibonacci(n-2)

let rec pow x y = if y = 0 then 1 else x * (pow x (y-1))

let rec log x y = if y/x <= 1 then y/x else (log x (y/x)) + 1

let rec gcf x y = if y = 0 then abs x else (gcf y (x mod y))

let rec prime_helper count x = if x = count then true else if x mod count = 0 then false else (prime_helper (count + 1) x)

let rec is_prime x = if x <= 1 then false else let count = 2 in (prime_helper count x)

(*****************)
(* Part 3: Lists *)
(*****************)

let rec get idx lst = match lst with | [] -> failwith "Out of bounds" | h::t -> if idx = 0 then h else get (idx - 1) t

let rec length lst = match lst with | [] -> 0 | h::t -> length t + 1

let larger lst1 lst2 = if length lst1 < length lst2 then lst2 else if length lst1 > length lst2 then lst1 else []

let rec append lst1 lst2 = match lst1 with | [] -> lst2 | (h::t) -> h::(append t lst2)

let rec combine lst1 lst2 = match lst1 with | h::t -> h::combine t lst2 | [] -> lst2

let reverse lst = let rec helper x = function | [] -> x | h::t -> helper (h::x) t in helper [] lst

let rec merge lst1 lst2 = match lst1, lst2 with | [], _ -> lst2 | _, [] -> lst1 | h::t, a::b -> if h < a then h:: merge t lst2 else a:: merge lst1 b 

let rec rotate shift lst = match shift with | 0-> lst | _-> match lst with | []-> lst | h::t -> rotate (shift - 1) (append t[h])

let rec is_palindrome lst = if reverse lst = lst then true else false