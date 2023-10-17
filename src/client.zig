const os = @import("std").os;
const socket = @import("socket.zig");

pub fn connect() !void {
    const s = try socket.makeSocket();
    socket.connect(s, "localhost:3306");
    return s;
}
