const std = @import("std");
const mem = std.mem;

pub fn toRna(allocator: mem.Allocator, dna: []const u8) mem.Allocator.Error![]const u8 {
    const len = dna.len;
    const rna = try allocator.alloc(u8, len);

    for (dna, 0..) |base, i| {
        switch (base) {
           'G' => rna[i] = 'C',
           'C' => rna[i] = 'G',
           'T' => rna[i] = 'A',
           'A' => rna[i] = 'U',
           else => rna[i] = base
        }
    }

    return rna;
}
