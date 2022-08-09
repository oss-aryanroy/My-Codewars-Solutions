List<Object> josepheusPermutation(List<Object> items, int k) {
	if (items.length < 1) return items;
   	List<Object> result = [];
	var current = 0;
	var forward = k - 1;
	while (items.length != 0) {
		current = (current + forward) % items.length;
		result.add(items.removeAt(current));
	}
	return result;
}

void main(List<String> args) {
	List testCases = [
		[[1, 2, 3, 4, 5, 6, 7], 3],
		[["C", "o", "d", "e", "W", "a", "r", "s"], 4],
		[[2, 3, 9, 8, 1, 8, 2], 5],
		[List.filled(0, 0), 3]
	];

	List expectedResults = [
		[3, 6, 2, 7, 5, 1, 4],
		["e", "s", "W", "o", "C", "d", "r", "a"],
		[1, 9, 3, 8, 2, 2, 8],
		List.filled(0, 0)
	];

	for (var i = 0; i < testCases.length; i++) {
		var result = josepheusPermutation(testCases[i][0], testCases[i][1]);
		print("${testCases[i][0]} => ${result}");
		assert (result == expectedResults[i]);
	}
}