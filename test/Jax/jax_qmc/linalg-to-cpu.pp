// linalg dialect to gpu dialect lowering pipeline
builtin.module(inline
convert-tensor-to-linalg
convert-elementwise-to-linalg
func.func(empty-tensor-to-alloc-tensor)
one-shot-bufferize{unknown-type-conversion=identity-layout-map function-boundary-type-conversion=identity-layout-map bufferize-function-boundaries}
buffer-deallocation-pipeline
func.func(convert-linalg-to-loops)
convert-scf-to-cf
convert-cf-to-llvm
convert-arith-to-llvm
convert-math-to-llvm
convert-complex-to-llvm
convert-index-to-llvm
finalize-memref-to-llvm
convert-func-to-llvm
reconcile-unrealized-casts)
// End
