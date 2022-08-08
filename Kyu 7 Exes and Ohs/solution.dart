

bool XO(String str) {
	var strr = str.toLowerCase().split('');
	var map = {};
	for (String i in strr) {
		if (map[i] != null) {
			var stuff = map[i];
			if (stuff != null) {
				map[i] = stuff + 1;
			}
		} else {
			map[i] = 1;
		}
	}
	return map['x'] == map['o'];
}

void main(List<String> args) {
	List testCases = ['xo', 'xxOo', 'xxxm', 'Oo', 'ooom', 'xxxoo'];
	for (String i in testCases) {
		print(XO(i));
	}
}