# Define a free group with 37 generators
f := FreeGroup("x0", "x1", "x2", "x3", "x4", "x5", "x6", "x7", "x8", "x9", "x10", "x11", "x12", "x13", "x14", "x15", "x16", "x17", "x18", "x19", "x20", "x21", "x22", "x23", "x24", "x25", "x26", "x27", "x28", "x29", "x30", "x31", "x32", "x33", "x34", "x35", "x36");;

# Define the relators as products of generators
relators := [
    f.22^-1,
    f.1 * f.13 * f.23^-1 * f.6^-1,
    f.2 * f.13 * f.24^-1 * f.7^-1,
    f.3 * f.14 * f.25^-1,
    f.2 * f.15 * f.23^-1,
    f.16 * f.25^-1 * f.18^-1,
    f.15 * f.26^-1 * f.19^-1,
    f.4 * f.16 * f.24^-1 * f.6^-1,
    f.15 * f.22^-1 * f.6^-1,
    f.8 * f.14 * f.27^-1 * f.20^-1,
    f.5 * f.17 * f.25^-1 * f.7^-1,
    f.1 * f.14 * f.22^-1 * f.7^-1,
    f.5 * f.15 * f.28^-1,
    f.9 * f.14 * f.28^-1 * f.19^-1,
    f.4 * f.13 * f.29^-1,
    f.10 * f.16 * f.27^-1 * f.19^-1,
    f.11 * f.27^-1 * f.21^-1,
    f.3 * f.17 * f.26^-1,
    f.12 * f.13 * f.26^-1 * f.20^-1,
    f.11 * f.17 * f.24^-1 * f.18^-1,
    f.12 * f.23^-1 * f.18^-1,
    f.10 * f.17 * f.28^-1 * f.21^-1,
    f.8 * f.16 * f.29^-1 * f.21^-1,
    f.9 * f.29^-1 * f.20^-1,
    f.22^-1 * f.23 * f.30^-1,
    f.24^-1 * f.22 * f.32^-1,
    f.25^-1 * f.22 * f.34^-1,
    f.23^-1 * f.25 * f.31^-1,
    f.30 * f.26^-1 * f.27 * f.31^-1,
    f.24^-1 * f.23 * f.36^-1,
    f.25^-1 * f.24 * f.37^-1,
    f.33 * f.28^-1 * f.29,
    f.32 * f.28^-1 * f.26 * f.33^-1,
    f.36 * f.29^-1 * f.26 * f.37^-1,
    f.35 * f.27^-1 * f.28,
    f.34 * f.27^-1 * f.29 * f.35^-1,
    f.12^-1 * f.9 * f.1^-1
];;

# Define the finitely presented group
g := f / relators;;

h :=  SimplifiedFpGroup(g);;
xx := IsTrivial(h);