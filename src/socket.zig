const std = @import("std");
const os = std.os;

fn connect() !void {
    const socket = os.socket(os.SOCK.AFINET);
    _ = socket;
}
