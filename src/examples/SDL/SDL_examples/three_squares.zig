const std = @import("std");
const c = @cImport({
    @cInclude("SDL.h");
});

pub fn add(a: i32, b: i32) i32 {
    return a + b;
}

pub fn threeSquares(renderer: ?*c.SDL_Renderer) !void {
    _ = c.SDL_SetRenderDrawColor(renderer, 0xff, 0xff, 0xff, 0xff);
    _ = c.SDL_RenderClear(renderer);
    var rect = c.SDL_Rect{ .x = 0, .y = 0, .w = 60, .h = 60 };
    const a = 0.001 * @as(f32, @floatFromInt(c.SDL_GetTicks()));
    const t = 2 * std.math.pi / 3.0;
    const r = 100 * @cos(0.1 * a);
    rect.x = 290 + @as(i32, @intFromFloat(r * @cos(a)));
    rect.y = 170 + @as(i32, @intFromFloat(r * @sin(a)));
    _ = c.SDL_SetRenderDrawColor(renderer, 0xff, 0, 0, 0xff);
    _ = c.SDL_RenderFillRect(renderer, &rect);
    rect.x = 290 + @as(i32, @intFromFloat(r * @cos(a + t)));
    rect.y = 170 + @as(i32, @intFromFloat(r * @sin(a + t)));
    _ = c.SDL_SetRenderDrawColor(renderer, 0, 0xff, 0, 0xff);
    _ = c.SDL_RenderFillRect(renderer, &rect);
    rect.x = 290 + @as(i32, @intFromFloat(r * @cos(a + 2 * t)));
    rect.y = 170 + @as(i32, @intFromFloat(r * @sin(a + 2 * t)));
    _ = c.SDL_SetRenderDrawColor(renderer, 0, 0, 0xff, 0xff);
    _ = c.SDL_RenderFillRect(renderer, &rect);
    c.SDL_RenderPresent(renderer);
}
