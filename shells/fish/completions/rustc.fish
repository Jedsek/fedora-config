 # Tab completion for rustc (https://github.com/rust-lang/rust).
complete -e -c rustc

complete -c rustc -s h -l help 

complete -c rustc -x -l cfg
complete -c rustc -r -s L -a 'dylib= static= framework='
complete -c rustc -x -s l -a 'dylib= static= framework='
complete -c rustc -x -l crate-type -a 'bin lib rlib dylib staticlib'
complete -c rustc -r -l crate-name
complete -c rustc -x -l emit -a 'asm llvm-bc llvm-ir obj link dep-info'
complete -c rustc -x -l print -a 'crate-name file-names sysroot'
complete -c rustc -s g
complete -c rustc -s O
complete -c rustc -r -l out-dir
complete -c rustc -x -l explain
complete -c rustc -l test
complete -c rustc -l target
complete -c rustc -x -l cap-lints
complete -c rustc -s V -l version -d 'Print version info and exit'
complete -c rustc -s v -l verbose -d 'Use verbose output'
complete -c rustc -f -l extern
complete -c rustc -f -l sysroot
complete -c rustc -x -l color -a 'auto always never'

complete -c rustc -x -s C -l codegen -a 'ar=' -d "tool to assemble archives with"
complete -c rustc -x -s C -l codegen -a 'linker=' -d "system linker to link outputs with"
complete -c rustc -x -s C -l codegen -a 'link-args=' -d "extra arguments to pass to the linker (space separated)"
complete -c rustc -x -s C -l codegen -a 'lto' -d "perform LLVM link-time optimizations"
complete -c rustc -x -s C -l codegen -a 'target-cpu=' -d "select target processor (llc -mcpu=help for details)"
complete -c rustc -x -s C -l codegen -a 'target-feature=' -d "target specific attributes (llc -mattr=help for details)"
complete -c rustc -x -s C -l codegen -a 'passes=' -d "a list of extra LLVM passes to run (space separated)"
complete -c rustc -x -s C -l codegen -a 'llvm-args=' -d "a list of arguments to pass to llvm (space separated)"
complete -c rustc -x -s C -l codegen -a 'save-temps' -d "save all temporary output files during compilation"
complete -c rustc -x -s C -l codegen -a 'rpath' -d "set rpath values in libs/exes"
complete -c rustc -x -s C -l codegen -a 'no-prepopulate-passes' -d "don't pre-populate the pass manager with a list of passes"
complete -c rustc -x -s C -l codegen -a 'no-vectorize-loops' -d "don't run the loop vectorization optimization passes"
complete -c rustc -x -s C -l codegen -a 'no-vectorize-slp' -d "don't run LLVM's SLP vectorization pass"
complete -c rustc -x -s C -l codegen -a 'soft-float' -d "generate software floating point library calls"
complete -c rustc -x -s C -l codegen -a 'prefer-dynamic' -d "prefer dynamic linking to static linking"
complete -c rustc -x -s C -l codegen -a 'no-integrated-as' -d "use an external assembler rather than LLVM's integrated one"
complete -c rustc -x -s C -l codegen -a 'no-redzone=' -d "disable the use of the redzone"
complete -c rustc -x -s C -l codegen -a 'relocation-model=' -d "choose the relocation model to use (llc -relocation-model for details)"
complete -c rustc -x -s C -l codegen -a 'code-model=' -d "choose the code model to use (llc -code-model for details)"
complete -c rustc -x -s C -l codegen -a 'metadata=' -d "metadata to mangle symbol names with"
complete -c rustc -x -s C -l codegen -a 'extra-filename=' -d "extra data to put in each output filename"
complete -c rustc -x -s C -l codegen -a 'codegen-units=' -d "divide crate into N units to optimize in parallel"
complete -c rustc -x -s C -l codegen -a 'remark=' -d "print remarks for these optimization passes (space separated, or "all")"
complete -c rustc -x -s C -l codegen -a 'no-stack-check' -d "disable checks for stack exhaustion (a memory-safety hazard!)"
complete -c rustc -x -s C -l codegen -a 'debuginfo=' -d "debug info emission level, 0 = no debug info, 1 = line tables only, 2 = full debug info with variable and type information"
complete -c rustc -x -s C -l codegen -a 'opt-level=' -d "Optimize with possible levels 0-3"
complete -c rustc -x -s C -l codegen -a 'debug-assertions=' -d "explicitly enable the cfg(debug_assertions) directive"

complete -c rustc -x -s W -l warn -a 'box-pointers' -d "use of owned (Box type) heap memory"
complete -c rustc -x -s W -l warn -a 'fat-ptr-transmutes' -d "detects transmutes of fat pointers"
complete -c rustc -x -s W -l warn -a 'missing-copy-implementations' -d "detects potentially-forgotten implementations of `Copy`"
complete -c rustc -x -s W -l warn -a 'missing-debug-implementations' -d "detects missing implementations of fmt::Debug"
complete -c rustc -x -s W -l warn -a 'missing-docs' -d "detects missing documentation for public members"
complete -c rustc -x -s W -l warn -a 'trivial-casts' -d "detects trivial casts which could be removed"
complete -c rustc -x -s W -l warn -a 'trivial-numeric-casts' -d "detects trivial casts of numeric types which could be removed"
complete -c rustc -x -s W -l warn -a 'unsafe-code' -d "usage of `unsafe` code"
complete -c rustc -x -s W -l warn -a 'unstable-features' -d "enabling unstable features (deprecated. do not use)"
complete -c rustc -x -s W -l warn -a 'unused-extern-crates' -d "extern crates that are never used"
complete -c rustc -x -s W -l warn -a 'unused-import-braces' -d "unnecessary braces around an imported item"
complete -c rustc -x -s W -l warn -a 'unused-qualifications' -d "detects unnecessarily qualified names"
complete -c rustc -x -s W -l warn -a 'unused-results' -d "unused result of an expression in a statement"
complete -c rustc -x -s W -l warn -a 'variant-size-differences' -d "detects enums with widely varying variant sizes"
complete -c rustc -x -s W -l warn -a 'dead-code' -d "detect unused, unexported items"
complete -c rustc -x -s W -l warn -a 'deprecated' -d "detects use of #[deprecated] items"
complete -c rustc -x -s W -l warn -a 'drop-with-repr-extern' -d "use of #[repr(C)] on a type that implements Drop"
complete -c rustc -x -s W -l warn -a 'improper-ctypes' -d "proper use of libc types in foreign modules"
complete -c rustc -x -s W -l warn -a 'non-camel-case-types' -d "types, variants, traits and type parameters should have camel case names"
complete -c rustc -x -s W -l warn -a 'non-shorthand-field-patterns' -d "using `Struct { x: x }` instead of `Struct { x }`"
complete -c rustc -x -s W -l warn -a 'non-snake-case' -d "methods, functions, lifetime parameters and modules should have snake case names"
complete -c rustc -x -s W -l warn -a 'non-upper-case-globals' -d "static constants should have uppercase identifiers"
complete -c rustc -x -s W -l warn -a 'overflowing-literals' -d "literal out of range for its type"
complete -c rustc -x -s W -l warn -a 'path-statements' -d "path statements with no effect"
complete -c rustc -x -s W -l warn -a 'plugin-as-library' -d "compiler plugin used as ordinary library in non-plugin crate"
complete -c rustc -x -s W -l warn -a 'private-no-mangle-fns' -d "functions marked #[no_mangle] should be exported"
complete -c rustc -x -s W -l warn -a 'private-no-mangle-statics' -d "statics marked #[no_mangle] should be exported"
complete -c rustc -x -s W -l warn -a 'raw-pointer-derive' -d "uses of #[derive] with raw pointers are rarely correct"
complete -c rustc -x -s W -l warn -a 'stable-features' -d "stable features found in #[feature] directive"
complete -c rustc -x -s W -l warn -a 'unconditional-recursion' -d "functions that cannot return without calling themselves"
complete -c rustc -x -s W -l warn -a 'unknown-lints' -d "unrecognized lint attribute"
complete -c rustc -x -s W -l warn -a 'unreachable-code' -d "detects unreachable code paths"
complete -c rustc -x -s W -l warn -a 'unused-allocation' -d "detects unnecessary allocations that can be eliminated"
complete -c rustc -x -s W -l warn -a 'unused-assignments' -d "detect assignments that will never be read"
complete -c rustc -x -s W -l warn -a 'unused-attributes' -d "detects attributes that were not used by the compiler"
complete -c rustc -x -s W -l warn -a 'unused-comparisons' -d "comparisons made useless by limits of the types involved"
complete -c rustc -x -s W -l warn -a 'unused-features' -d "unused or unknown features found in crate-level #[feature] directives"
complete -c rustc -x -s W -l warn -a 'unused-imports' -d "imports that are never used"
complete -c rustc -x -s W -l warn -a 'unused-must-use' -d "unused result of a type flagged as #[must_use]"
complete -c rustc -x -s W -l warn -a 'unused-mut' -d "detect mut variables which don't need to be mutable"
complete -c rustc -x -s W -l warn -a 'unused-parens' -d "`if`, `match`, `while` and `return` do not need parentheses"
complete -c rustc -x -s W -l warn -a 'unused-unsafe' -d "unnecessary use of an `unsafe` block"
complete -c rustc -x -s W -l warn -a 'unused-variables' -d "detect variables which are not used in any way"
complete -c rustc -x -s W -l warn -a 'warnings' -d "mass-change the level for lints which produce warnings"
complete -c rustc -x -s W -l warn -a 'while-true' -d "suggest using `loop { }` instead of `while true { }`"
complete -c rustc -x -s W -l warn -a 'exceeding-bitshifts' -d "shift exceeds the type's number of bits"
complete -c rustc -x -s W -l warn -a 'mutable-transmutes' -d "mutating transmuted &mut T from &T may cause undefined behavior"
complete -c rustc -x -s W -l warn -a 'no-mangle-const-items' -d "const items will not have their symbols exported"
complete -c rustc -x -s W -l warn -a 'unknown-crate-types' -d "unknown crate type found in #[crate_type] directive"
complete -c rustc -x -s A -l allow -a 'box-pointers' -d "use of owned (Box type) heap memory"
complete -c rustc -x -s A -l allow -a 'fat-ptr-transmutes' -d "detects transmutes of fat pointers"
complete -c rustc -x -s A -l allow -a 'missing-copy-implementations' -d "detects potentially-forgotten implementations of `Copy`"
complete -c rustc -x -s A -l allow -a 'missing-debug-implementations' -d "detects missing implementations of fmt::Debug"
complete -c rustc -x -s A -l allow -a 'missing-docs' -d "detects missing documentation for public members"
complete -c rustc -x -s A -l allow -a 'trivial-casts' -d "detects trivial casts which could be removed"
complete -c rustc -x -s A -l allow -a 'trivial-numeric-casts' -d "detects trivial casts of numeric types which could be removed"
complete -c rustc -x -s A -l allow -a 'unsafe-code' -d "usage of `unsafe` code"
complete -c rustc -x -s A -l allow -a 'unstable-features' -d "enabling unstable features (deprecated. do not use)"
complete -c rustc -x -s A -l allow -a 'unused-extern-crates' -d "extern crates that are never used"
complete -c rustc -x -s A -l allow -a 'unused-import-braces' -d "unnecessary braces around an imported item"
complete -c rustc -x -s A -l allow -a 'unused-qualifications' -d "detects unnecessarily qualified names"
complete -c rustc -x -s A -l allow -a 'unused-results' -d "unused result of an expression in a statement"
complete -c rustc -x -s A -l allow -a 'variant-size-differences' -d "detects enums with widely varying variant sizes"
complete -c rustc -x -s A -l allow -a 'dead-code' -d "detect unused, unexported items"
complete -c rustc -x -s A -l allow -a 'deprecated' -d "detects use of #[deprecated] items"
complete -c rustc -x -s A -l allow -a 'drop-with-repr-extern' -d "use of #[repr(C)] on a type that implements Drop"
complete -c rustc -x -s A -l allow -a 'improper-ctypes' -d "proper use of libc types in foreign modules"
complete -c rustc -x -s A -l allow -a 'non-camel-case-types' -d "types, variants, traits and type parameters should have camel case names"
complete -c rustc -x -s A -l allow -a 'non-shorthand-field-patterns' -d "using `Struct { x: x }` instead of `Struct { x }`"
complete -c rustc -x -s A -l allow -a 'non-snake-case' -d "methods, functions, lifetime parameters and modules should have snake case names"
complete -c rustc -x -s A -l allow -a 'non-upper-case-globals' -d "static constants should have uppercase identifiers"
complete -c rustc -x -s A -l allow -a 'overflowing-literals' -d "literal out of range for its type"
complete -c rustc -x -s A -l allow -a 'path-statements' -d "path statements with no effect"
complete -c rustc -x -s A -l allow -a 'plugin-as-library' -d "compiler plugin used as ordinary library in non-plugin crate"
complete -c rustc -x -s A -l allow -a 'private-no-mangle-fns' -d "functions marked #[no_mangle] should be exported"
complete -c rustc -x -s A -l allow -a 'private-no-mangle-statics' -d "statics marked #[no_mangle] should be exported"
complete -c rustc -x -s A -l allow -a 'raw-pointer-derive' -d "uses of #[derive] with raw pointers are rarely correct"
complete -c rustc -x -s A -l allow -a 'stable-features' -d "stable features found in #[feature] directive"
complete -c rustc -x -s A -l allow -a 'unconditional-recursion' -d "functions that cannot return without calling themselves"
complete -c rustc -x -s A -l allow -a 'unknown-lints' -d "unrecognized lint attribute"
complete -c rustc -x -s A -l allow -a 'unreachable-code' -d "detects unreachable code paths"
complete -c rustc -x -s A -l allow -a 'unused-allocation' -d "detects unnecessary allocations that can be eliminated"
complete -c rustc -x -s A -l allow -a 'unused-assignments' -d "detect assignments that will never be read"
complete -c rustc -x -s A -l allow -a 'unused-attributes' -d "detects attributes that were not used by the compiler"
complete -c rustc -x -s A -l allow -a 'unused-comparisons' -d "comparisons made useless by limits of the types involved"
complete -c rustc -x -s A -l allow -a 'unused-features' -d "unused or unknown features found in crate-level #[feature] directives"
complete -c rustc -x -s A -l allow -a 'unused-imports' -d "imports that are never used"
complete -c rustc -x -s A -l allow -a 'unused-must-use' -d "unused result of a type flagged as #[must_use]"
complete -c rustc -x -s A -l allow -a 'unused-mut' -d "detect mut variables which don't need to be mutable"
complete -c rustc -x -s A -l allow -a 'unused-parens' -d "`if`, `match`, `while` and `return` do not need parentheses"
complete -c rustc -x -s A -l allow -a 'unused-unsafe' -d "unnecessary use of an `unsafe` block"
complete -c rustc -x -s A -l allow -a 'unused-variables' -d "detect variables which are not used in any way"
complete -c rustc -x -s A -l allow -a 'warnings' -d "mass-change the level for lints which produce warnings"
complete -c rustc -x -s A -l allow -a 'while-true' -d "suggest using `loop { }` instead of `while true { }`"
complete -c rustc -x -s A -l allow -a 'exceeding-bitshifts' -d "shift exceeds the type's number of bits"
complete -c rustc -x -s A -l allow -a 'mutable-transmutes' -d "mutating transmuted &mut T from &T may cause undefined behavior"
complete -c rustc -x -s A -l allow -a 'no-mangle-const-items' -d "const items will not have their symbols exported"
complete -c rustc -x -s A -l allow -a 'unknown-crate-types' -d "unknown crate type found in #[crate_type] directive"
complete -c rustc -x -s D -l deny -a 'box-pointers' -d "use of owned (Box type) heap memory"
complete -c rustc -x -s D -l deny -a 'fat-ptr-transmutes' -d "detects transmutes of fat pointers"
complete -c rustc -x -s D -l deny -a 'missing-copy-implementations' -d "detects potentially-forgotten implementations of `Copy`"
complete -c rustc -x -s D -l deny -a 'missing-debug-implementations' -d "detects missing implementations of fmt::Debug"
complete -c rustc -x -s D -l deny -a 'missing-docs' -d "detects missing documentation for public members"
complete -c rustc -x -s D -l deny -a 'trivial-casts' -d "detects trivial casts which could be removed"
complete -c rustc -x -s D -l deny -a 'trivial-numeric-casts' -d "detects trivial casts of numeric types which could be removed"
complete -c rustc -x -s D -l deny -a 'unsafe-code' -d "usage of `unsafe` code"
complete -c rustc -x -s D -l deny -a 'unstable-features' -d "enabling unstable features (deprecated. do not use)"
complete -c rustc -x -s D -l deny -a 'unused-extern-crates' -d "extern crates that are never used"
complete -c rustc -x -s D -l deny -a 'unused-import-braces' -d "unnecessary braces around an imported item"
complete -c rustc -x -s D -l deny -a 'unused-qualifications' -d "detects unnecessarily qualified names"
complete -c rustc -x -s D -l deny -a 'unused-results' -d "unused result of an expression in a statement"
complete -c rustc -x -s D -l deny -a 'variant-size-differences' -d "detects enums with widely varying variant sizes"
complete -c rustc -x -s D -l deny -a 'dead-code' -d "detect unused, unexported items"
complete -c rustc -x -s D -l deny -a 'deprecated' -d "detects use of #[deprecated] items"
complete -c rustc -x -s D -l deny -a 'drop-with-repr-extern' -d "use of #[repr(C)] on a type that implements Drop"
complete -c rustc -x -s D -l deny -a 'improper-ctypes' -d "proper use of libc types in foreign modules"
complete -c rustc -x -s D -l deny -a 'non-camel-case-types' -d "types, variants, traits and type parameters should have camel case names"
complete -c rustc -x -s D -l deny -a 'non-shorthand-field-patterns' -d "using `Struct { x: x }` instead of `Struct { x }`"
complete -c rustc -x -s D -l deny -a 'non-snake-case' -d "methods, functions, lifetime parameters and modules should have snake case names"
complete -c rustc -x -s D -l deny -a 'non-upper-case-globals' -d "static constants should have uppercase identifiers"
complete -c rustc -x -s D -l deny -a 'overflowing-literals' -d "literal out of range for its type"
complete -c rustc -x -s D -l deny -a 'path-statements' -d "path statements with no effect"
complete -c rustc -x -s D -l deny -a 'plugin-as-library' -d "compiler plugin used as ordinary library in non-plugin crate"
complete -c rustc -x -s D -l deny -a 'private-no-mangle-fns' -d "functions marked #[no_mangle] should be exported"
complete -c rustc -x -s D -l deny -a 'private-no-mangle-statics' -d "statics marked #[no_mangle] should be exported"
complete -c rustc -x -s D -l deny -a 'raw-pointer-derive' -d "uses of #[derive] with raw pointers are rarely correct"
complete -c rustc -x -s D -l deny -a 'stable-features' -d "stable features found in #[feature] directive"
complete -c rustc -x -s D -l deny -a 'unconditional-recursion' -d "functions that cannot return without calling themselves"
complete -c rustc -x -s D -l deny -a 'unknown-lints' -d "unrecognized lint attribute"
complete -c rustc -x -s D -l deny -a 'unreachable-code' -d "detects unreachable code paths"
complete -c rustc -x -s D -l deny -a 'unused-allocation' -d "detects unnecessary allocations that can be eliminated"
complete -c rustc -x -s D -l deny -a 'unused-assignments' -d "detect assignments that will never be read"
complete -c rustc -x -s D -l deny -a 'unused-attributes' -d "detects attributes that were not used by the compiler"
complete -c rustc -x -s D -l deny -a 'unused-comparisons' -d "comparisons made useless by limits of the types involved"
complete -c rustc -x -s D -l deny -a 'unused-features' -d "unused or unknown features found in crate-level #[feature] directives"
complete -c rustc -x -s D -l deny -a 'unused-imports' -d "imports that are never used"
complete -c rustc -x -s D -l deny -a 'unused-must-use' -d "unused result of a type flagged as #[must_use]"
complete -c rustc -x -s D -l deny -a 'unused-mut' -d "detect mut variables which don't need to be mutable"
complete -c rustc -x -s D -l deny -a 'unused-parens' -d "`if`, `match`, `while` and `return` do not need parentheses"
complete -c rustc -x -s D -l deny -a 'unused-unsafe' -d "unnecessary use of an `unsafe` block"
complete -c rustc -x -s D -l deny -a 'unused-variables' -d "detect variables which are not used in any way"
complete -c rustc -x -s D -l deny -a 'warnings' -d "mass-change the level for lints which produce warnings"
complete -c rustc -x -s D -l deny -a 'while-true' -d "suggest using `loop { }` instead of `while true { }`"
complete -c rustc -x -s D -l deny -a 'exceeding-bitshifts' -d "shift exceeds the type's number of bits"
complete -c rustc -x -s D -l deny -a 'mutable-transmutes' -d "mutating transmuted &mut T from &T may cause undefined behavior"
complete -c rustc -x -s D -l deny -a 'no-mangle-const-items' -d "const items will not have their symbols exported"
complete -c rustc -x -s D -l deny -a 'unknown-crate-types' -d "unknown crate type found in #[crate_type] directive"
complete -c rustc -x -s F -l forbid -a 'box-pointers' -d "use of owned (Box type) heap memory"
complete -c rustc -x -s F -l forbid -a 'fat-ptr-transmutes' -d "detects transmutes of fat pointers"
complete -c rustc -x -s F -l forbid -a 'missing-copy-implementations' -d "detects potentially-forgotten implementations of `Copy`"
complete -c rustc -x -s F -l forbid -a 'missing-debug-implementations' -d "detects missing implementations of fmt::Debug"
complete -c rustc -x -s F -l forbid -a 'missing-docs' -d "detects missing documentation for public members"
complete -c rustc -x -s F -l forbid -a 'trivial-casts' -d "detects trivial casts which could be removed"
complete -c rustc -x -s F -l forbid -a 'trivial-numeric-casts' -d "detects trivial casts of numeric types which could be removed"
complete -c rustc -x -s F -l forbid -a 'unsafe-code' -d "usage of `unsafe` code"
complete -c rustc -x -s F -l forbid -a 'unstable-features' -d "enabling unstable features (deprecated. do not use)"
complete -c rustc -x -s F -l forbid -a 'unused-extern-crates' -d "extern crates that are never used"
complete -c rustc -x -s F -l forbid -a 'unused-import-braces' -d "unnecessary braces around an imported item"
complete -c rustc -x -s F -l forbid -a 'unused-qualifications' -d "detects unnecessarily qualified names"
complete -c rustc -x -s F -l forbid -a 'unused-results' -d "unused result of an expression in a statement"
complete -c rustc -x -s F -l forbid -a 'variant-size-differences' -d "detects enums with widely varying variant sizes"
complete -c rustc -x -s F -l forbid -a 'dead-code' -d "detect unused, unexported items"
complete -c rustc -x -s F -l forbid -a 'deprecated' -d "detects use of #[deprecated] items"
complete -c rustc -x -s F -l forbid -a 'drop-with-repr-extern' -d "use of #[repr(C)] on a type that implements Drop"
complete -c rustc -x -s F -l forbid -a 'improper-ctypes' -d "proper use of libc types in foreign modules"
complete -c rustc -x -s F -l forbid -a 'non-camel-case-types' -d "types, variants, traits and type parameters should have camel case names"
complete -c rustc -x -s F -l forbid -a 'non-shorthand-field-patterns' -d "using `Struct { x: x }` instead of `Struct { x }`"
complete -c rustc -x -s F -l forbid -a 'non-snake-case' -d "methods, functions, lifetime parameters and modules should have snake case names"
complete -c rustc -x -s F -l forbid -a 'non-upper-case-globals' -d "static constants should have uppercase identifiers"
complete -c rustc -x -s F -l forbid -a 'overflowing-literals' -d "literal out of range for its type"
complete -c rustc -x -s F -l forbid -a 'path-statements' -d "path statements with no effect"
complete -c rustc -x -s F -l forbid -a 'plugin-as-library' -d "compiler plugin used as ordinary library in non-plugin crate"
complete -c rustc -x -s F -l forbid -a 'private-no-mangle-fns' -d "functions marked #[no_mangle] should be exported"
complete -c rustc -x -s F -l forbid -a 'private-no-mangle-statics' -d "statics marked #[no_mangle] should be exported"
complete -c rustc -x -s F -l forbid -a 'raw-pointer-derive' -d "uses of #[derive] with raw pointers are rarely correct"
complete -c rustc -x -s F -l forbid -a 'stable-features' -d "stable features found in #[feature] directive"
complete -c rustc -x -s F -l forbid -a 'unconditional-recursion' -d "functions that cannot return without calling themselves"
complete -c rustc -x -s F -l forbid -a 'unknown-lints' -d "unrecognized lint attribute"
complete -c rustc -x -s F -l forbid -a 'unreachable-code' -d "detects unreachable code paths"
complete -c rustc -x -s F -l forbid -a 'unused-allocation' -d "detects unnecessary allocations that can be eliminated"
complete -c rustc -x -s F -l forbid -a 'unused-assignments' -d "detect assignments that will never be read"
complete -c rustc -x -s F -l forbid -a 'unused-attributes' -d "detects attributes that were not used by the compiler"
complete -c rustc -x -s F -l forbid -a 'unused-comparisons' -d "comparisons made useless by limits of the types involved"
complete -c rustc -x -s F -l forbid -a 'unused-features' -d "unused or unknown features found in crate-level #[feature] directives"
complete -c rustc -x -s F -l forbid -a 'unused-imports' -d "imports that are never used"
complete -c rustc -x -s F -l forbid -a 'unused-must-use' -d "unused result of a type flagged as #[must_use]"
complete -c rustc -x -s F -l forbid -a 'unused-mut' -d "detect mut variables which don't need to be mutable"
complete -c rustc -x -s F -l forbid -a 'unused-parens' -d "`if`, `match`, `while` and `return` do not need parentheses"
complete -c rustc -x -s F -l forbid -a 'unused-unsafe' -d "unnecessary use of an `unsafe` block"
complete -c rustc -x -s F -l forbid -a 'unused-variables' -d "detect variables which are not used in any way"
complete -c rustc -x -s F -l forbid -a 'warnings' -d "mass-change the level for lints which produce warnings"
complete -c rustc -x -s F -l forbid -a 'while-true' -d "suggest using `loop { }` instead of `while true { }`"
complete -c rustc -x -s F -l forbid -a 'exceeding-bitshifts' -d "shift exceeds the type's number of bits"
complete -c rustc -x -s F -l forbid -a 'mutable-transmutes' -d "mutating transmuted &mut T from &T may cause undefined behavior"
complete -c rustc -x -s F -l forbid -a 'no-mangle-const-items' -d "const items will not have their symbols exported"
complete -c rustc -x -s F -l forbid -a 'unknown-crate-types' -d "unknown crate type found in #[crate_type] directive"

complete -c rustc -x -s Z -a 'verbose' -d "in general, enable more debug printouts"
complete -c rustc -x -s Z -a 'time-passes' -d "measure time of each rustc pass"
complete -c rustc -x -s Z -a 'count-llvm-insns' -d "count where LLVM instrs originate"
complete -c rustc -x -s Z -a 'time-llvm-passes' -d "measure time of each LLVM pass"
complete -c rustc -x -s Z -a 'trans-stats' -d "gather trans statistics"
complete -c rustc -x -s Z -a 'asm-comments' -d "generate comments into the assembly (may change behavior)"
complete -c rustc -x -s Z -a 'no-verify' -d "skip LLVM verification"
complete -c rustc -x -s Z -a 'borrowck-stats' -d "gather borrowck statistics"
complete -c rustc -x -s Z -a 'no-landing-pads' -d "omit landing pads for unwinding"
complete -c rustc -x -s Z -a 'debug-llvm' -d "enable debug output from LLVM"
complete -c rustc -x -s Z -a 'count-type-sizes' -d "count the sizes of aggregate types"
complete -c rustc -x -s Z -a 'meta-stats' -d "gather metadata statistics"
complete -c rustc -x -s Z -a 'print-link-args' -d "Print the arguments passed to the linker"
complete -c rustc -x -s Z -a 'gc' -d "Garbage collect shared data (experimental)"
complete -c rustc -x -s Z -a 'print-llvm-passes' -d "Prints the llvm optimization passes being run"
complete -c rustc -x -s Z -a 'ast-json' -d "Print the AST as JSON and halt"
complete -c rustc -x -s Z -a 'ast-json-noexpand' -d "Print the pre-expansion AST as JSON and halt"
complete -c rustc -x -s Z -a 'ls' -d "List the symbols defined by a library crate"
complete -c rustc -x -s Z -a 'save-analysis' -d "Write syntax and type analysis information in addition to normal output"
complete -c rustc -x -s Z -a 'print-move-fragments' -d "Print out move-fragment data for every fn"
complete -c rustc -x -s Z -a 'flowgraph-print-loans' -d "Include loan analysis data in --pretty flowgraph output"
complete -c rustc -x -s Z -a 'flowgraph-print-moves' -d "Include move analysis data in --pretty flowgraph output"
complete -c rustc -x -s Z -a 'flowgraph-print-assigns' -d "Include assignment analysis data in --pretty flowgraph output"
complete -c rustc -x -s Z -a 'flowgraph-print-all' -d "Include all dataflow analysis data in --pretty flowgraph output"
complete -c rustc -x -s Z -a 'print-region-graph' -d "Prints region inference graph. Use with RUST_REGION_GRAPH=help for more info"
complete -c rustc -x -s Z -a 'parse-only' -d "Parse only; do not compile, assemble, or link"
complete -c rustc -x -s Z -a 'no-trans' -d "Run all passes except translation; no output"
complete -c rustc -x -s Z -a 'treat-err-as-bug' -d "Treat all errors that occur as bugs"
complete -c rustc -x -s Z -a 'no-analysis' -d "Parse and expand the source, but run no analysis"
complete -c rustc -x -s Z -a 'extra-plugins=val' -d "load extra plugins"
complete -c rustc -x -s Z -a 'unstable-options' -d "Adds unstable command line options to rustc interface"
complete -c rustc -x -s Z -a 'print-enum-sizes' -d "Print the size of enums and their variants"
complete -c rustc -x -s Z -a 'force-overflow-checks=val' -d "Force overflow checks on or off"
complete -c rustc -x -s Z -a 'force-dropflag-checks=val' -d "Force drop flag checks on or off"
complete -c rustc -x -s Z -a 'trace-macros' -d "For every macro invocation, print its name and arguments"
complete -c rustc -x -s Z -a 'enable-nonzeroing-move-hints' -d "Force nonzeroing move optimization on"

