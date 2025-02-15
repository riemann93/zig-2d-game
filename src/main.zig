const std = @import("std");
pub const sdl_loop = @import("examples/SDL/main_loop.zig");
pub const guessing_game = @import("examples/CLI/guessing_game.zig");

pub fn main() !void {
    // try sdl_loop.render();
    try guessing_game.run();
}
