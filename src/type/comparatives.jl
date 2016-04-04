
function isless(a::Digit30, b::Digit30)
    (a.hi < b.hi) || (a.hi==b.hi && a.lo<b.lo)
end
function isless(a::Digit30, b::Float64)
    (a.hi < b) || (a.hi==b && a.lo<zero(Float64))
end
function isless(a::Float64, b::Digit30)
    (a < b.hi) || (a==b.hi && b.lo<zero(Float64))
end
function isequal(a::Digit30, b::Digit30)
    (a.hi == b.hi) && (a.lo == b.lo)
end
function isequal(a::Digit30, b::Float64)
    (a.hi == b) && (a.lo == zero(Float64))
end
function isequal(a::Float64, b::Digit30)
    (a == b.hi) && (b.lo == zero(Float64))
end

@inline (==)(a::Digit30,b::Digit30) = (a.hi == b.hi) && (a.lo == b.lo)
@inline (< )(a::Digit30,b::Digit30) = (a.hi < b.hi) || (a.hi==b.hi && a.lo<b.lo)
@inline (<=)(a::Digit30,b::Digit30) = (a.hi < b.hi) || (a.hi==b.hi && a.lo<=b.lo)
@inline (> )(a::Digit30,b::Digit30) = (a.hi > b.hi) || (a.hi==b.hi && a.lo>b.lo)
@inline (>=)(a::Digit30,b::Digit30) = (a.hi > b.hi) || (a.hi==b.hi && a.lo>=b.lo)
