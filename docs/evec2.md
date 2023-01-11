# evec2
Extended `vec2`
### Usage
`evec2(X[, Y])`  
[] - optional  
If `Y` is not specified, `evec2` will repeat `X`
### API
- `<evec2>.X`
X value of the vector
- `<evec2>.Y`
Y value of the vector
- `<evec2>:add(value: number | evec2 | vec2)`
Adds `value` to self.
- `<evec2>:subtract(value: number | evec2 | vec2)`
Subtracts `X` and `Y` from self by `value` or `value.X` and `value.Y`.
- `<evec2>:multiply(value: number | evec2 | vec2)`
Multiplies `X` and `Y` from self by `value` or `value.X` and `value.Y`.
- `<evec2>:divide(value: number | evec2 | vec2)`
Divides `X` and `Y` from self by `value` or `value.X` and `value.Y`.
- `<evec2>:equals(value: number | evec2 | vec2)`
Checks if the vectors are equal.
If `value` is a number then it'll check if the vector's `X` and `Y` are both equal to `value`
- `<evec2>:greather(value: number | evec2 | vec2)`
Checks if `self` is greather than `value`
If `value` is a number then it'll check if the vector's `X` and `Y` are both greather than `value`
- `<evec2>:less(value: number | evec2 | vec2)`
Checks if `self` is less than `value`
If `value` is a number then it'll check if the vector's `X` and `Y` are both less than `value`
- `<evec2>:unm()`
Unary minus on `self`.
- `<evec2>:tovec2(): vec2`
Returns a normal `vec2` from self.
### Operations
- `<evec2> + <evec2>`
Adds 2 vectors together and returns a new vector without modifying any of them.
- `<evec2> - <evec2>`
Subtracts 2 vectors and returns a new vector without modifying any of them.
- `<evec2> * <evec2>`
Multiplies 2 vectors and returns a new vector without modifying any of them.
- `<evec2> / <evec2>`
Divides 2 vectors and returns a new vector without modifying any of them.
- `<evec2> % <evec2>`
Does modulus on 2 vectors and returns a new vector without modifying any of them.
- `<evec2> ^ <evec2>`
Does potency on 2 vectors and returns a new vector without modifying any of them.
- `<evec2> == <evec2>`
Checks if 2 vectors are equal.
- `<evec2> < <evec2>`
Checks if the vector is less than the first
- `<evec2> > <evec2>`
Checks if the vector is greather than the first
- `<evec2> <= <evec2>`
Checks if the vector is less than or equal the first
- `<evec2> >= <evec2>`
Checks if the vector is greather than or equal the first

**Note:** the second operand can be a number and it will be treated as `evec2(x, x)`
