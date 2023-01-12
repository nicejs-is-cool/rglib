-- module: bit
bit = bit or {}

bit.bits = 32
bit.powtab = { 1 }

for b = 1, bit.bits - 1 do
  bit.powtab[#bit.powtab + 1] = math.pow(2, b)
end
