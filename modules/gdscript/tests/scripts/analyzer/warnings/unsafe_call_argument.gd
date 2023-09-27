func variant_func(x: Variant) -> void:
	print(x)

func int_func(x: int) -> void:
	print(x)

func float_func(x: float) -> void:
	print(x)

# We don't want to execute it because of errors, just analyze.
func no_exec_test():
	var untyped_int = 42
	var untyped_string = "abc"
	var variant_int: Variant = 42
	var variant_string: Variant = "abc"
	var typed_int: int = 42

	variant_func(untyped_int) # No warning.
	variant_func(untyped_string) # No warning.
	variant_func(variant_int) # No warning.
	variant_func(variant_string) # No warning.
	variant_func(typed_int) # No warning.

	int_func(untyped_int)
	int_func(untyped_string)
	int_func(variant_int)
	int_func(variant_string)
	int_func(typed_int) # No warning.

	float_func(untyped_int)
	float_func(untyped_string)
	float_func(variant_int)
	float_func(variant_string)
	float_func(typed_int) # No warning.

func test():
	pass
