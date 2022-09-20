.memorymap
	defaultslot 1

	slotsize $800
	slot 0 $0000

	slotsize $8000
	slot 1 $6000

	slotsize $e2f
	slot 2 $c470

	slotsize $ccf
	slot 3 $c5d0

	slotsize $f4c
	slot 4 $c2b4

	slotsize $1
	slot 5 $d29f
.endme

.rombankmap
	bankstotal 5
	banksize $8000
	banks 1
	banksize $e2f
	banks 1
	banksize $ccf
	banks 1
	banksize $f4c
	banks 1
	banksize $1
	banks 1
.endro

.asciitable
.enda

.emptyfill $ff
