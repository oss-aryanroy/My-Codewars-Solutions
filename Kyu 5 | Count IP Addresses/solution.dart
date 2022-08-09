import 'dart:math';

List<int> getIPAddrArray(String ipAddr) {
	return ipAddr.split('.').map((e) => int.parse(e)).toList();
}

BigInt ipsBetween(String ip1, String ip2) {
	List ip1Array = getIPAddrArray(ip1);
	List ip2Array = getIPAddrArray(ip2);

	BigInt ips = BigInt.from(0);

	for (var i = 0; i < ip1Array.length; i++) {
		ips += BigInt.from(ip2Array[i] - ip1Array[i]) * BigInt.from(pow(256, 3 - i));
	}
	return ips;
}

void main() {
	List testCases = [
        ["10.0.0.0", "10.0.0.50"],
        ["20.0.0.10", "20.0.1.0"],
        ["0.0.0.0", "255.255.255.255"]
	];
	for (List<String> testCase in testCases) {
		print("${testCase[0]} - ${testCase[1]} => ${ipsBetween(testCase[0], testCase[1])}");
	}
}