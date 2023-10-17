const client = @import("client.zig");

pub fn main() !void {
    try client.connect();
}
