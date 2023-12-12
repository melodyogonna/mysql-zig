const std = @import("std");
const net = @import("std").net;

pub fn connect() !void {
    const addr = try net.Address.resolveIp("127.0.0.1", 3306);
    const conn = try net.tcpConnectToAddress(addr);
    var buffer: [100]u8 = undefined;
    const s = try conn.read(&buffer);
    std.debug.print("Server res {s}", .{buffer});
    std.debug.print("Server res {}", .{s});
}
