from ipaddress import IPv4Address


def ips_between(start, end):
    return int(IPv4Address(end)) - int(IPv4Address(start))
