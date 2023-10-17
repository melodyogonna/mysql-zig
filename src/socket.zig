const std = @import("std");
const os = std.os;
const network = @import("network");

pub fn makeSocket() !Socket {
    const socket = try os.socket(os.AF.INET, os.SOCK.STREAM, 0);
    return Socket{ .fd = socket };
}

const Socket = struct { fd: os.socket_t };

pub fn connect(s: Socket, addr: *const []u8) os.ConnectError!void {
    try os.connect(s.fd, addr, 10);
}
