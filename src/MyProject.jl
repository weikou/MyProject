module MyProject

import Random
import JSON

export greet, greet_alien

"""
    greet() 
	
Print 'Hello World!'.

## Example

```jldoctest
julia> greet()
"Hello World!"
```
"""
function greet() 
	return "Hello World!"
end


"""
    greet_alien()
	
Greet an alien with a random 8-characters long name.

## Example

```jldoctest
julia> length(greet_alien())
14
```
"""
greet_alien() = string("Hello ", Random.randstring(8))


end
