.include "includes.s"
        
.bank $002 slot 3
.org $0

	lda $0770                                                  ; $c5d0 : $ad, $70, $07
	cmp #$03                                                  ; $c5d3 : $c9, $03
	beq br_02_c5f1                                                  ; $c5d5 : $f0, $1a

	lda $07f5                                                  ; $c5d7 : $ad, $f5, $07
	bne br_02_c5e9                                                  ; $c5da : $d0, $0d

	lda #$1d                                                  ; $c5dc : $a9, $1d
	sta $0773                                                  ; $c5de : $8d, $73, $07
	lda #$10                                                  ; $c5e1 : $a9, $10
	sta $07a0                                                  ; $c5e3 : $8d, $a0, $07
	inc $07f5                                                  ; $c5e6 : $ee, $f5, $07

br_02_c5e9:
	lda #$00                                                  ; $c5e9 : $a9, $00
	sta $0774                                                  ; $c5eb : $8d, $74, $07
	jmp Jump_02_c61a                                                  ; $c5ee : $4c, $1a, $c6


br_02_c5f1:
	lda #$20                                                  ; $c5f1 : $a9, $20
	sta $07a0                                                  ; $c5f3 : $8d, $a0, $07
	lda #$1e                                                  ; $c5f6 : $a9, $1e
	sta $0773                                                  ; $c5f8 : $8d, $73, $07
	jmp Jump_02_c63e                                                  ; $c5fb : $4c, $3e, $c6


	lda $073c                                                  ; $c5fe : $ad, $3c, $07
	jsr $6c7d                                                  ; $c601 : $20, $7d, $6c
	inc $64, x                                                  ; $c604 : $f6, $64
	.db $a7                                                  ; $c606 : $a7
	adc $af                                                  ; $c607 : $65, $af
	adc $12                                                  ; $c609 : $65, $12
	dec $1f                                                  ; $c60b : $c6, $1f
	adc $3f                                                  ; $c60d : $65, $3f
	adc $1e                                                  ; $c60f : $65, $1e
	dec $a9                                                  ; $c611 : $c6, $a9
	.db $1b                                                  ; $c613 : $1b
	sta $0773                                                  ; $c614 : $8d, $73, $07
	sta $0722                                                  ; $c617 : $8d, $22, $07

Jump_02_c61a:
	inc $073c                                                  ; $c61a : $ee, $3c, $07
	rts                                                  ; $c61d : $60


	lda #$a2                                                  ; $c61e : $a9, $a2
	jsr $6d79                                                  ; $c620 : $20, $79, $6d
	lda #$cc                                                  ; $c623 : $a9, $cc
	sta $611e                                                  ; $c625 : $8d, $1e, $61
	lda #$5f                                                  ; $c628 : $a9, $5f
	sta $611d                                                  ; $c62a : $8d, $1d, $61
	lda #$01                                                  ; $c62d : $a9, $01
	sta $fb                                                  ; $c62f : $85, $fb
	lda #$00                                                  ; $c631 : $a9, $00
	sta $0c                                                  ; $c633 : $85, $0c
	sta $077a                                                  ; $c635 : $8d, $7a, $07
	sta $0722                                                  ; $c638 : $8d, $22, $07
	sta $0774                                                  ; $c63b : $8d, $74, $07

Jump_02_c63e:
	inc $0772                                                  ; $c63e : $ee, $72, $07
	rts                                                  ; $c641 : $60


	lda $0749                                                  ; $c642 : $ad, $49, $07
	bne br_02_c660                                                  ; $c645 : $d0, $19

	ldy $0719                                                  ; $c647 : $ac, $19, $07
	cpy #$0a                                                  ; $c64a : $c0, $0a
	bcs br_02_c672                                                  ; $c64c : $b0, $24

	iny                                                  ; $c64e : $c8
	iny                                                  ; $c64f : $c8
	iny                                                  ; $c650 : $c8
	cpy #$05                                                  ; $c651 : $c0, $05
	bne br_02_c659                                                  ; $c653 : $d0, $04

	lda #$04                                                  ; $c655 : $a9, $04
	sta $fc                                                  ; $c657 : $85, $fc

br_02_c659:
	tya                                                  ; $c659 : $98
	clc                                                  ; $c65a : $18
	adc #$0c                                                  ; $c65b : $69, $0c
	sta $0773                                                  ; $c65d : $8d, $73, $07

br_02_c660:
	lda $0749                                                  ; $c660 : $ad, $49, $07
	clc                                                  ; $c663 : $18
	adc #$04                                                  ; $c664 : $69, $04
	sta $0749                                                  ; $c666 : $8d, $49, $07
	lda $0719                                                  ; $c669 : $ad, $19, $07
	adc #$00                                                  ; $c66c : $69, $00
	sta $0719                                                  ; $c66e : $8d, $19, $07
	rts                                                  ; $c671 : $60


br_02_c672:
	lda #$0c                                                  ; $c672 : $a9, $0c
	sta $07a1                                                  ; $c674 : $8d, $a1, $07

br_02_c677:
	inc $0772                                                  ; $c677 : $ee, $72, $07

Call_02_c67a:
	lda #$00                                                  ; $c67a : $a9, $00
	sta $0761                                                  ; $c67c : $8d, $61, $07
	sta $0762                                                  ; $c67f : $8d, $62, $07
	sta $0763                                                  ; $c682 : $8d, $63, $07

br_02_c685:
	rts                                                  ; $c685 : $60


	lda $07a1                                                  ; $c686 : $ad, $a1, $07
	bne br_02_c685                                                  ; $c689 : $d0, $fa

	lda $075a                                                  ; $c68b : $ad, $5a, $07
	bmi br_02_c677                                                  ; $c68e : $30, $e7

	lda $0780                                                  ; $c690 : $ad, $80, $07
	bne br_02_c685                                                  ; $c693 : $d0, $f0

	lda #$30                                                  ; $c695 : $a9, $30
	sta $0780                                                  ; $c697 : $8d, $80, $07
	lda #$40                                                  ; $c69a : $a9, $40
	sta $fe                                                  ; $c69c : $85, $fe
	dec $075a                                                  ; $c69e : $ce, $5a, $07
	lda #$01                                                  ; $c6a1 : $a9, $01
	sta $0135                                                  ; $c6a3 : $8d, $35, $01
	jmp $9f70                                                  ; $c6a6 : $4c, $70, $9f


	.db $3f                                                  ; $c6a9 : $3f
	.db $00                                                  ; $c6aa : $00
	bpl br_02_c6bc                                                  ; $c6ab : $10, $0f

	bmi $0f                                                  ; $c6ad : $30, $0f

	.db $0f                                                  ; $c6af : $0f
	.db $0f                                                  ; $c6b0 : $0f
	bmi $10                                                  ; $c6b1 : $30, $10

	.db $00                                                  ; $c6b3 : $00
	.db $0f                                                  ; $c6b4 : $0f
	and ($12, x)                                                  ; $c6b5 : $21, $12
	and ($0f, x)                                                  ; $c6b7 : $21, $0f
	.db $27                                                  ; $c6b9 : $27
	.db $17                                                  ; $c6ba : $17
	.db $00                                                  ; $c6bb : $00

br_02_c6bc:
	.db $00                                                  ; $c6bc : $00
	ora ($02, x)                                                  ; $c6bd : $01, $02
	ora ($21), y                                                  ; $c6bf : $11, $21
	.db $22                                                  ; $c6c1 : $22
	stx $55                                                  ; $c6c2 : $86, $55
	bit $22                                                  ; $c6c4 : $24, $22
	ldx $55                                                  ; $c6c6 : $a6, $55
	bit $00                                                  ; $c6c8 : $24, $00
	inc $0761                                                  ; $c6ca : $ee, $61, $07
	lda $0763                                                  ; $c6cd : $ad, $63, $07
	bne br_02_c6df                                                  ; $c6d0 : $d0, $0d

	lda $0761                                                  ; $c6d2 : $ad, $61, $07
	and #$ff                                                  ; $c6d5 : $29, $ff
	bne br_02_c70f                                                  ; $c6d7 : $d0, $36

	inc $0763                                                  ; $c6d9 : $ee, $63, $07
	jmp Jump_02_c6e6                                                  ; $c6dc : $4c, $e6, $c6


br_02_c6df:
	lda $0761                                                  ; $c6df : $ad, $61, $07
	and #$0f                                                  ; $c6e2 : $29, $0f
	bne br_02_c70f                                                  ; $c6e4 : $d0, $29

Jump_02_c6e6:
	ldx #$13                                                  ; $c6e6 : $a2, $13

br_02_c6e8:
	lda $c6a9, x                                                  ; $c6e8 : $bd, $a9, $c6
	sta $0301, x                                                  ; $c6eb : $9d, $01, $03
	dex                                                  ; $c6ee : $ca
	bpl br_02_c6e8                                                  ; $c6ef : $10, $f7

	ldx #$0c                                                  ; $c6f1 : $a2, $0c
	ldy $0762                                                  ; $c6f3 : $ac, $62, $07

br_02_c6f6:
	lda $c6bd, y                                                  ; $c6f6 : $b9, $bd, $c6
	sta $0304, x                                                  ; $c6f9 : $9d, $04, $03
	dex                                                  ; $c6fc : $ca
	dex                                                  ; $c6fd : $ca
	dex                                                  ; $c6fe : $ca
	dex                                                  ; $c6ff : $ca
	bpl br_02_c6f6                                                  ; $c700 : $10, $f4

	inc $0762                                                  ; $c702 : $ee, $62, $07
	lda $0762                                                  ; $c705 : $ad, $62, $07
	cmp #$04                                                  ; $c708 : $c9, $04
	bne br_02_c70f                                                  ; $c70a : $d0, $03

	inc $0772                                                  ; $c70c : $ee, $72, $07

br_02_c70f:
	rts                                                  ; $c70f : $60


	ldx #$08                                                  ; $c710 : $a2, $08

br_02_c712:
	lda $c6c1, x                                                  ; $c712 : $bd, $c1, $c6
	sta $0301, x                                                  ; $c715 : $9d, $01, $03
	dex                                                  ; $c718 : $ca
	bpl br_02_c712                                                  ; $c719 : $10, $f7

	inc $0772                                                  ; $c71b : $ee, $72, $07
	jsr Call_02_c67a                                                  ; $c71e : $20, $7a, $c6
	lda #$60                                                  ; $c721 : $a9, $60
	sta $0764                                                  ; $c723 : $8d, $64, $07
	rts                                                  ; $c726 : $60


	jsr Call_02_c7bd                                                  ; $c727 : $20, $bd, $c7
	lda $0608                                                  ; $c72a : $ad, $08, $06
	bne br_02_c737                                                  ; $c72d : $d0, $08

	lda $07fb                                                  ; $c72f : $ad, $fb, $07
	bne br_02_c76a                                                  ; $c732 : $d0, $36

	inc $0772                                                  ; $c734 : $ee, $72, $07

br_02_c737:
	rts                                                  ; $c737 : $60


	lda $07fc                                                  ; $c738 : $ad, $fc, $07
	jsr $6c7d                                                  ; $c73b : $20, $7d, $6c
	.db $13                                                  ; $c73e : $13
	cmp ($59, x)                                                  ; $c73f : $c1, $59
	.db $c7                                                  ; $c741 : $c7
	rol $c1                                                  ; $c742 : $26, $c1
	sec                                                  ; $c744 : $38

br_02_c745:
	cmp ($40, x)                                                  ; $c745 : $c1, $40
	cmp ($0f, x)                                                  ; $c747 : $c1, $0f
	.db $53                                                  ; $c749 : $53
	eor $5332                                                  ; $c74a : $4d, $32, $53
	eor ($56, x)                                                  ; $c74d : $41, $56
	eor $20                                                  ; $c74f : $45, $20
	.db $9f                                                  ; $c751 : $9f
	.db $d2                                                  ; $c752 : $d2

br_02_c753:
	ora ($00, x)                                                  ; $c753 : $01, $00
	.db $00                                                  ; $c755 : $00
	.db $9f                                                  ; $c756 : $9f
	.db $d2                                                  ; $c757 : $d2
	.db $00                                                  ; $c758 : $00
	lda #$07                                                  ; $c759 : $a9, $07
	jsr $e239                                                  ; $c75b : $20, $39, $e2
	.db $d2                                                  ; $c75e : $d2
	cpy #$48                                                  ; $c75f : $c0, $48
	.db $c7                                                  ; $c761 : $c7
	beq br_02_c76a                                                  ; $c762 : $f0, $06

	inc $07fc                                                  ; $c764 : $ee, $fc, $07
	jmp $c182                                                  ; $c767 : $4c, $82, $c1


br_02_c76a:
	lda #$d2                                                  ; $c76a : $a9, $d2
	sta $611e                                                  ; $c76c : $8d, $1e, $61
	lda #$a0                                                  ; $c76f : $a9, $a0
	sta $611d                                                  ; $c771 : $8d, $1d, $61
	lda #$00                                                  ; $c774 : $a9, $00

br_02_c776:
	sta $07fc                                                  ; $c776 : $8d, $fc, $07
	sta $0772                                                  ; $c779 : $8d, $72, $07
	lda $07fb                                                  ; $c77c : $ad, $fb, $07
	bne br_02_c788                                                  ; $c77f : $d0, $07

	lda $07fa                                                  ; $c781 : $ad, $fa, $07
	cmp #$ff                                                  ; $c784 : $c9, $ff
	beq br_02_c793                                                  ; $c786 : $f0, $0b

br_02_c788:
	lda #$00                                                  ; $c788 : $a9, $00
	sta $07fa                                                  ; $c78a : $8d, $fa, $07
	sta $0770                                                  ; $c78d : $8d, $70, $07
	jmp $bfb0                                                  ; $c790 : $4c, $b0, $bf


br_02_c793:
	lda #$00                                                  ; $c793 : $a9, $00
	sta $07fa                                                  ; $c795 : $8d, $fa, $07
	sta $075a                                                  ; $c798 : $8d, $5a, $07
	sta $07f5                                                  ; $c79b : $8d, $f5, $07
	jmp $63d7                                                  ; $c79e : $4c, $d7, $63


	bvc br_02_c753                                                  ; $c7a1 : $50, $b0

	cpx #$68                                                  ; $c7a3 : $e0, $68
	tya                                                  ; $c7a5 : $98
	iny                                                  ; $c7a6 : $c8
	.db $80                                                  ; $c7a7 : $80
	bvc $68                                                  ; $c7a8 : $50, $68

	.db $80                                                  ; $c7aa : $80
	tya                                                  ; $c7ab : $98
	bcs br_02_c776                                                  ; $c7ac : $b0, $c8

	cpx #$b8                                                  ; $c7ae : $e0, $b8
	bcc br_02_c822                                                  ; $c7b0 : $90, $70

	pla                                                  ; $c7b2 : $68
	bvs br_02_c745                                                  ; $c7b3 : $70, $90

	clv                                                  ; $c7b5 : $b8
	sec                                                  ; $c7b6 : $38
	pha                                                  ; $c7b7 : $48
	rts                                                  ; $c7b8 : $60


	.db $80                                                  ; $c7b9 : $80
	ldy #$b8                                                  ; $c7ba : $a0, $b8
	iny                                                  ; $c7bc : $c8

Call_02_c7bd:
	lda $0764                                                  ; $c7bd : $ad, $64, $07
	beq br_02_c7c6                                                  ; $c7c0 : $f0, $04

	dec $0764                                                  ; $c7c2 : $ce, $64, $07
	rts                                                  ; $c7c5 : $60


br_02_c7c6:
	jsr $628a                                                  ; $c7c6 : $20, $8a, $62
	ldx $0762                                                  ; $c7c9 : $ae, $62, $07
	cpx #$07                                                  ; $c7cc : $e0, $07
	beq br_02_c7e1                                                  ; $c7ce : $f0, $11

	lda $0761                                                  ; $c7d0 : $ad, $61, $07
	and #$1f                                                  ; $c7d3 : $29, $1f
	bne br_02_c7f7                                                  ; $c7d5 : $d0, $20

	inc $0762                                                  ; $c7d7 : $ee, $62, $07
	lda #$01                                                  ; $c7da : $a9, $01
	sta $fe                                                  ; $c7dc : $85, $fe
	jmp Jump_02_c7f7                                                  ; $c7de : $4c, $f7, $c7


br_02_c7e1:
	lda $0761                                                  ; $c7e1 : $ad, $61, $07
	and #$1f                                                  ; $c7e4 : $29, $1f
	bne br_02_c7f7                                                  ; $c7e6 : $d0, $0f

	inc $0763                                                  ; $c7e8 : $ee, $63, $07
	lda $0763                                                  ; $c7eb : $ad, $63, $07
	cmp #$0b                                                  ; $c7ee : $c9, $0b
	bcc br_02_c7f7                                                  ; $c7f0 : $90, $05

	lda #$04                                                  ; $c7f2 : $a9, $04
	sta $0763                                                  ; $c7f4 : $8d, $63, $07

Jump_02_c7f7:
br_02_c7f7:
	inc $0761                                                  ; $c7f7 : $ee, $61, $07
	lda $075f                                                  ; $c7fa : $ad, $5f, $07
	pha                                                  ; $c7fd : $48
	lda $0762                                                  ; $c7fe : $ad, $62, $07
	pha                                                  ; $c801 : $48
	tax                                                  ; $c802 : $aa

br_02_c803:
	lda $0763                                                  ; $c803 : $ad, $63, $07
	cmp #$04                                                  ; $c806 : $c9, $04
	bcc br_02_c815                                                  ; $c808 : $90, $0b

	sbc #$04                                                  ; $c80a : $e9, $04
	tay                                                  ; $c80c : $a8
	lda $c7a1, y                                                  ; $c80d : $b9, $a1, $c7
	cmp $c7a7, x                                                  ; $c810 : $dd, $a7, $c7
	beq br_02_c834                                                  ; $c813 : $f0, $1f

br_02_c815:
	ldy $c7a7, x                                                  ; $c815 : $bc, $a7, $c7
	sty $06e5                                                  ; $c818 : $8c, $e5, $06
	lda #$35                                                  ; $c81b : $a9, $35
	sta $16                                                  ; $c81d : $85, $16
	lda $c7ae, x                                                  ; $c81f : $bd, $ae, $c7

br_02_c822:
	sta $cf                                                  ; $c822 : $85, $cf
	lda $c7b5, x                                                  ; $c824 : $bd, $b5, $c7
	sta $03ae                                                  ; $c827 : $8d, $ae, $03
	ldx #$00                                                  ; $c82a : $a2, $00
	stx $075f                                                  ; $c82c : $8e, $5f, $07
	stx $08                                                  ; $c82f : $86, $08
	jsr $b52c                                                  ; $c831 : $20, $2c, $b5

br_02_c834:
	dec $0762                                                  ; $c834 : $ce, $62, $07
	ldx $0762                                                  ; $c837 : $ae, $62, $07
	bne br_02_c803                                                  ; $c83a : $d0, $c7

	pla                                                  ; $c83c : $68
	sta $0762                                                  ; $c83d : $8d, $62, $07
	pla                                                  ; $c840 : $68
	sta $075f                                                  ; $c841 : $8d, $5f, $07
	lda #$30                                                  ; $c844 : $a9, $30
	sta $06e5                                                  ; $c846 : $8d, $e5, $06
	lda #$b8                                                  ; $c849 : $a9, $b8
	sta $cf                                                  ; $c84b : $85, $cf
	rts                                                  ; $c84d : $60


	asl $0a, x                                                  ; $c84e : $16, $0a
	.db $1b                                                  ; $c850 : $1b
	.db $12                                                  ; $c851 : $12
	clc                                                  ; $c852 : $18
	ora $1e, x                                                  ; $c853 : $15, $1e
	.db $12                                                  ; $c855 : $12
	bpl $12                                                  ; $c856 : $10, $12

	lda #$00                                                  ; $c858 : $a9, $00
	sta $073c                                                  ; $c85a : $8d, $3c, $07
	ldx #$04                                                  ; $c85d : $a2, $04
	lda $0753                                                  ; $c85f : $ad, $53, $07
	beq br_02_c866                                                  ; $c862 : $f0, $02

	ldx #$09                                                  ; $c864 : $a2, $09

br_02_c866:
	ldy #$04                                                  ; $c866 : $a0, $04

br_02_c868:
	lda $c84e, x                                                  ; $c868 : $bd, $4e, $c8
	sta $c8a0, y                                                  ; $c86b : $99, $a0, $c8
	sta $c8e5, y                                                  ; $c86e : $99, $e5, $c8
	dex                                                  ; $c871 : $ca
	dey                                                  ; $c872 : $88
	bpl br_02_c868                                                  ; $c873 : $10, $f3

	rts                                                  ; $c875 : $60


	.db $23                                                  ; $c876 : $23
	cpy #$48                                                  ; $c877 : $c0, $48
	eor $23, x                                                  ; $c879 : $55, $23
	.db $c2                                                  ; $c87b : $c2
	ora ($d5, x)                                                  ; $c87c : $01, $d5
	.db $00                                                  ; $c87e : $00
	.db $3f                                                  ; $c87f : $3f
	.db $00                                                  ; $c880 : $00
	bpl br_02_c892                                                  ; $c881 : $10, $0f

	.db $0f                                                  ; $c883 : $0f
	.db $0f                                                  ; $c884 : $0f
	.db $0f                                                  ; $c885 : $0f
	.db $0f                                                  ; $c886 : $0f
	bmi br_02_c899                                                  ; $c887 : $30, $10

	.db $00                                                  ; $c889 : $00
	.db $0f                                                  ; $c88a : $0f
	and ($12, x)                                                  ; $c88b : $21, $12
	.db $02                                                  ; $c88d : $02
	.db $0f                                                  ; $c88e : $0f
	.db $27                                                  ; $c88f : $27
	.db $17                                                  ; $c890 : $17
	.db $00                                                  ; $c891 : $00

br_02_c892:
	.db $00                                                  ; $c892 : $00
	jsr $10e8                                                  ; $c893 : $20, $e8, $10
	ora $0a11, x                                                  ; $c896 : $1d, $11, $0a

br_02_c899:
	.db $17                                                  ; $c899 : $17
	.db $14                                                  ; $c89a : $14
	bit $22                                                  ; $c89b : $24, $22
	clc                                                  ; $c89d : $18
	asl $1624, x                                                  ; $c89e : $1e, $24, $16
	asl a                                                  ; $c8a1 : $0a
	.db $1b                                                  ; $c8a2 : $1b
	.db $12                                                  ; $c8a3 : $12
	clc                                                  ; $c8a4 : $18
	.db $2b                                                  ; $c8a5 : $2b
	.db $23                                                  ; $c8a6 : $23
	iny                                                  ; $c8a7 : $c8
	pha                                                  ; $c8a8 : $48
	ora $00                                                  ; $c8a9 : $05, $00
	and ($09, x)                                                  ; $c8ab : $21, $09
	asl $0e19                                                  ; $c8ad : $0e, $19, $0e
	asl a                                                  ; $c8b0 : $0a
	.db $0c                                                  ; $c8b1 : $0c
	asl $1224                                                  ; $c8b2 : $0e, $24, $12
	.db $1c                                                  ; $c8b5 : $1c
	bit $19                                                  ; $c8b6 : $24, $19
	asl a                                                  ; $c8b8 : $0a
	.db $1f                                                  ; $c8b9 : $1f
	asl $230d                                                  ; $c8ba : $0e, $0d, $23
	bne br_02_c917                                                  ; $c8bd : $d0, $58

	tax                                                  ; $c8bf : $aa
	.db $00                                                  ; $c8c0 : $00
	and ($47, x)                                                  ; $c8c1 : $21, $47
	.db $12                                                  ; $c8c3 : $12
	jsr $1d12                                                  ; $c8c4 : $20, $12, $1d
	ora ($24), y                                                  ; $c8c7 : $11, $24
	.db $14                                                  ; $c8c9 : $14
	.db $12                                                  ; $c8ca : $12
	.db $17                                                  ; $c8cb : $17
	bpl br_02_c8db                                                  ; $c8cc : $10, $0d

	clc                                                  ; $c8ce : $18
	asl $24, x                                                  ; $c8cf : $16, $24
	.db $1c                                                  ; $c8d1 : $1c
	asl a                                                  ; $c8d2 : $0a
	.db $1f                                                  ; $c8d3 : $1f
	asl $0d.w                                                  ; $c8d4 : $0e, $0d, $00
	and ($89, x)                                                  ; $c8d7 : $21, $89
	bpl $11                                                  ; $c8d9 : $10, $11

br_02_c8db:
	asl $1b1b, x                                                  ; $c8db : $1e, $1b, $1b
	asl a                                                  ; $c8de : $0a
	ora ($24), y                                                  ; $c8df : $11, $24
	ora $2418, x                                                  ; $c8e1 : $1d, $18, $24
	bit $16                                                  ; $c8e4 : $24, $16
	asl a                                                  ; $c8e6 : $0a
	.db $1b                                                  ; $c8e7 : $1b
	.db $12                                                  ; $c8e8 : $12
	clc                                                  ; $c8e9 : $18
	.db $00                                                  ; $c8ea : $00
	and ($ca, x)                                                  ; $c8eb : $21, $ca
	ora $1e18                                                  ; $c8ed : $0d, $18, $1e
	.db $1b                                                  ; $c8f0 : $1b
	bit $18                                                  ; $c8f1 : $24, $18
	.db $17                                                  ; $c8f3 : $17
	ora $22, x                                                  ; $c8f4 : $15, $22
	bit $11                                                  ; $c8f6 : $24, $11
	asl $181b                                                  ; $c8f8 : $0e, $1b, $18
	.db $00                                                  ; $c8fb : $00
	.db $22                                                  ; $c8fc : $22
	.db $07                                                  ; $c8fd : $07
	.db $13                                                  ; $c8fe : $13
	ora $1211, x                                                  ; $c8ff : $1d, $11, $12
	.db $1c                                                  ; $c902 : $1c
	bit $0e                                                  ; $c903 : $24, $0e
	.db $17                                                  ; $c905 : $17
	ora $241c                                                  ; $c906 : $0d, $1c, $24
	.db $22                                                  ; $c909 : $22
	clc                                                  ; $c90a : $18
	asl $241b, x                                                  ; $c90b : $1e, $1b, $24
	ora $121b, x                                                  ; $c90e : $1d, $1b, $12
	ora $2200, y                                                  ; $c911 : $19, $00, $22
	lsr $14                                                  ; $c914 : $46, $14
	clc                                                  ; $c916 : $18

br_02_c917:
	.db $0f                                                  ; $c917 : $0f
	bit $0a                                                  ; $c918 : $24, $0a
	bit $15                                                  ; $c91a : $24, $15
	clc                                                  ; $c91c : $18
	.db $17                                                  ; $c91d : $17
	bpl br_02_c944                                                  ; $c91e : $10, $24

	.db $0f                                                  ; $c920 : $0f
	.db $1b                                                  ; $c921 : $1b
	.db $12                                                  ; $c922 : $12
	asl $0d17                                                  ; $c923 : $0e, $17, $0d
	.db $1c                                                  ; $c926 : $1c
	ora ($12), y                                                  ; $c927 : $11, $12
	ora $2200, y                                                  ; $c929 : $19, $00, $22
	dey                                                  ; $c92c : $88
	bpl br_02_c930                                                  ; $c92d : $10, $01

	.db $00                                                  ; $c92f : $00

br_02_c930:
	.db $00                                                  ; $c930 : $00
	.db $00                                                  ; $c931 : $00
	.db $00                                                  ; $c932 : $00
	.db $00                                                  ; $c933 : $00
	bit $19                                                  ; $c934 : $24, $19
	ora $af1c, x                                                  ; $c936 : $1d, $1c, $af
	asl a                                                  ; $c939 : $0a
	ora $0e0d                                                  ; $c93a : $0d, $0d, $0e
	ora $e823                                                  ; $c93d : $0d, $23, $e8
	pha                                                  ; $c940 : $48
	.db $ff                                                  ; $c941 : $ff
	.db $00                                                  ; $c942 : $00
	.db $22                                                  ; $c943 : $22

br_02_c944:
	ldx $15                                                  ; $c944 : $a6, $15
	.db $0f                                                  ; $c946 : $0f
	clc                                                  ; $c947 : $18
	.db $1b                                                  ; $c948 : $1b
	bit $0e                                                  ; $c949 : $24, $0e
	asl a                                                  ; $c94b : $0a
	.db $0c                                                  ; $c94c : $0c
	ora ($24), y                                                  ; $c94d : $11, $24
	ora $0a15, y                                                  ; $c94f : $19, $15, $0a
	.db $22                                                  ; $c952 : $22
	asl $241b                                                  ; $c953 : $0e, $1b, $24
	ora $0e, x                                                  ; $c956 : $15, $0e
	.db $0f                                                  ; $c958 : $0f
	ora $af.w, x                                                  ; $c959 : $1d, $af, $00
	jsr $6080                                                  ; $c95c : $20, $80, $60
	lsr $a020, x                                                  ; $c95f : $5e, $20, $a0
	rts                                                  ; $c962 : $60


	eor $4023, x                                                  ; $c963 : $5d, $23, $40
	rts                                                  ; $c966 : $60


	lsr $6023, x                                                  ; $c967 : $5e, $23, $60
	rts                                                  ; $c96a : $60


	eor $8023, x                                                  ; $c96b : $5d, $23, $80
	rts                                                  ; $c96e : $60


	lsr $a023, x                                                  ; $c96f : $5e, $23, $a0
	rts                                                  ; $c972 : $60


	eor $c023, x                                                  ; $c973 : $5d, $23, $c0
	bvc br_02_c9cd                                                  ; $c976 : $50, $55

	.db $23                                                  ; $c978 : $23
	beq br_02_c9cb                                                  ; $c979 : $f0, $50

	eor $00, x                                                  ; $c97b : $55, $00
	.db $22                                                  ; $c97d : $22
	bit $18                                                  ; $c97e : $24, $18
	jsr $240e                                                  ; $c980 : $20, $0e, $24
	ora $0e1b, y                                                  ; $c983 : $19, $1b, $0e
	.db $1c                                                  ; $c986 : $1c
	asl $1d17                                                  ; $c987 : $0e, $17, $1d
	bit $0f                                                  ; $c98a : $24, $0f
	asl a                                                  ; $c98c : $0a
	.db $17                                                  ; $c98d : $17
	ora $1c0a, x                                                  ; $c98e : $1d, $0a, $1c
	.db $22                                                  ; $c991 : $22
	bit $20                                                  ; $c992 : $24, $20
	clc                                                  ; $c994 : $18
	.db $1b                                                  ; $c995 : $1b
	ora $0d, x                                                  ; $c996 : $15, $0d
	.db $22                                                  ; $c998 : $22
	ror $13                                                  ; $c999 : $66, $13
	ora $0e, x                                                  ; $c99b : $15, $0e
	ora $1cf2, x                                                  ; $c99d : $1d, $f2, $1c
	bit $1d                                                  ; $c9a0 : $24, $1d
	.db $1b                                                  ; $c9a2 : $1b
	.db $22                                                  ; $c9a3 : $22
	bit $76                                                  ; $c9a4 : $24, $76
	ora #$24                                                  ; $c9a6 : $09, $24
	jsr $1b18                                                  ; $c9a8 : $20, $18, $1b
	ora $0d, x                                                  ; $c9ab : $15, $0d
	adc $22, x                                                  ; $c9ad : $75, $22
	lda #$0e                                                  ; $c9af : $a9, $0e
	jsr $1d12                                                  ; $c9b1 : $20, $12, $1d
	ora ($24), y                                                  ; $c9b4 : $11, $24
	clc                                                  ; $c9b6 : $18
	.db $17                                                  ; $c9b7 : $17
	asl $1024                                                  ; $c9b8 : $0e, $24, $10
	asl a                                                  ; $c9bb : $0a
	asl $0e, x                                                  ; $c9bc : $16, $0e
	.db $af                                                  ; $c9be : $af
	.db $00                                                  ; $c9bf : $00
	and ($e0, x)                                                  ; $c9c0 : $21, $e0
	rts                                                  ; $c9c2 : $60


	bit $22                                                  ; $c9c3 : $24, $22
	rti                                                  ; $c9c5 : $40


	rts                                                  ; $c9c6 : $60


	bit $22                                                  ; $c9c7 : $24, $22
	and $16                                                  ; $c9c9 : $25, $16

br_02_c9cb:
	.db $22                                                  ; $c9cb : $22
	clc                                                  ; $c9cc : $18

br_02_c9cd:
	asl $1bf2, x                                                  ; $c9cd : $1e, $f2, $1b
	asl $0a24                                                  ; $c9d0 : $0e, $24, $0a
	bit $1c                                                  ; $c9d3 : $24, $1c
	asl $0e19, x                                                  ; $c9d5 : $1e, $19, $0e
	.db $1b                                                  ; $c9d8 : $1b
	bit $19                                                  ; $c9d9 : $24, $19
	ora $0a, x                                                  ; $c9db : $15, $0a
	.db $22                                                  ; $c9dd : $22
	asl $2b1b                                                  ; $c9de : $0e, $1b, $2b
	.db $22                                                  ; $c9e1 : $22
	adc #$0d                                                  ; $c9e2 : $69, $0d
	jsr $240e                                                  ; $c9e4 : $20, $0e, $24
	ora ($18), y                                                  ; $c9e7 : $11, $18
	ora $240e, y                                                  ; $c9e9 : $19, $0e, $24
	jsr $f20e                                                  ; $c9ec : $20, $0e, $f2
	ora $15, x                                                  ; $c9ef : $15, $15
	.db $22                                                  ; $c9f1 : $22
	lda #$0e                                                  ; $c9f2 : $a9, $0e
	.db $1c                                                  ; $c9f4 : $1c
	asl $240e                                                  ; $c9f5 : $0e, $0e, $24
	.db $22                                                  ; $c9f8 : $22
	clc                                                  ; $c9f9 : $18
	asl $0a24, x                                                  ; $c9fa : $1e, $24, $0a
	bpl br_02_ca09                                                  ; $c9fd : $10, $0a

	.db $12                                                  ; $c9ff : $12
	.db $17                                                  ; $ca00 : $17
	.db $af                                                  ; $ca01 : $af
	.db $22                                                  ; $ca02 : $22
	inx                                                  ; $ca03 : $e8
	bpl br_02_ca1c                                                  ; $ca04 : $10, $16

	asl a                                                  ; $ca06 : $0a
	.db $1b                                                  ; $ca07 : $1b
	.db $12                                                  ; $ca08 : $12

br_02_ca09:
	clc                                                  ; $ca09 : $18
	bit $0a                                                  ; $ca0a : $24, $0a
	.db $17                                                  ; $ca0c : $17
	ora $1c24                                                  ; $ca0d : $0d, $24, $1c
	ora $0f0a, x                                                  ; $ca10 : $1d, $0a, $0f
	.db $0f                                                  ; $ca13 : $0f
	.db $af                                                  ; $ca14 : $af
	.db $00                                                  ; $ca15 : $00
	.db $ff                                                  ; $ca16 : $ff
	.db $ff                                                  ; $ca17 : $ff
	.db $ff                                                  ; $ca18 : $ff
	.db $ff                                                  ; $ca19 : $ff
	.db $ff                                                  ; $ca1a : $ff
	.db $ff                                                  ; $ca1b : $ff

br_02_ca1c:
	.db $ff                                                  ; $ca1c : $ff
	.db $ff                                                  ; $ca1d : $ff
	.db $ff                                                  ; $ca1e : $ff
	.db $ff                                                  ; $ca1f : $ff
	.db $ff                                                  ; $ca20 : $ff
	.db $ff                                                  ; $ca21 : $ff
	.db $ff                                                  ; $ca22 : $ff
	.db $ff                                                  ; $ca23 : $ff
	.db $ff                                                  ; $ca24 : $ff
	.db $ff                                                  ; $ca25 : $ff
	.db $ff                                                  ; $ca26 : $ff
	.db $ff                                                  ; $ca27 : $ff
	.db $ff                                                  ; $ca28 : $ff
	.db $ff                                                  ; $ca29 : $ff
	.db $ff                                                  ; $ca2a : $ff
	.db $ff                                                  ; $ca2b : $ff
	.db $ff                                                  ; $ca2c : $ff
	.db $ff                                                  ; $ca2d : $ff
	.db $ff                                                  ; $ca2e : $ff
	.db $ff                                                  ; $ca2f : $ff
	.db $ff                                                  ; $ca30 : $ff
	.db $ff                                                  ; $ca31 : $ff
	.db $ff                                                  ; $ca32 : $ff
	.db $ff                                                  ; $ca33 : $ff
	.db $ff                                                  ; $ca34 : $ff
	.db $ff                                                  ; $ca35 : $ff
	.db $ff                                                  ; $ca36 : $ff
	.db $ff                                                  ; $ca37 : $ff
	.db $ff                                                  ; $ca38 : $ff
	.db $ff                                                  ; $ca39 : $ff
	.db $ff                                                  ; $ca3a : $ff
	.db $ff                                                  ; $ca3b : $ff
	.db $ff                                                  ; $ca3c : $ff
	.db $ff                                                  ; $ca3d : $ff
	.db $ff                                                  ; $ca3e : $ff
	.db $ff                                                  ; $ca3f : $ff
	.db $ff                                                  ; $ca40 : $ff
	.db $ff                                                  ; $ca41 : $ff
	.db $ff                                                  ; $ca42 : $ff
	.db $ff                                                  ; $ca43 : $ff
	.db $ff                                                  ; $ca44 : $ff
	.db $ff                                                  ; $ca45 : $ff
	.db $ff                                                  ; $ca46 : $ff
	.db $ff                                                  ; $ca47 : $ff
	.db $ff                                                  ; $ca48 : $ff
	.db $ff                                                  ; $ca49 : $ff
	.db $ff                                                  ; $ca4a : $ff
	.db $ff                                                  ; $ca4b : $ff
	.db $ff                                                  ; $ca4c : $ff
	.db $ff                                                  ; $ca4d : $ff
	.db $ff                                                  ; $ca4e : $ff
	.db $ff                                                  ; $ca4f : $ff
	.db $ff                                                  ; $ca50 : $ff
	.db $ff                                                  ; $ca51 : $ff
	.db $ff                                                  ; $ca52 : $ff
	.db $ff                                                  ; $ca53 : $ff
	.db $ff                                                  ; $ca54 : $ff
	.db $ff                                                  ; $ca55 : $ff
	.db $ff                                                  ; $ca56 : $ff
	.db $ff                                                  ; $ca57 : $ff
	.db $ff                                                  ; $ca58 : $ff
	.db $ff                                                  ; $ca59 : $ff
	.db $ff                                                  ; $ca5a : $ff
	.db $ff                                                  ; $ca5b : $ff
	.db $ff                                                  ; $ca5c : $ff
	.db $ff                                                  ; $ca5d : $ff
	.db $ff                                                  ; $ca5e : $ff
	.db $ff                                                  ; $ca5f : $ff
	.db $ff                                                  ; $ca60 : $ff
	.db $ff                                                  ; $ca61 : $ff
	.db $ff                                                  ; $ca62 : $ff
	.db $ff                                                  ; $ca63 : $ff
	.db $ff                                                  ; $ca64 : $ff
	.db $ff                                                  ; $ca65 : $ff
	.db $ff                                                  ; $ca66 : $ff
	.db $ff                                                  ; $ca67 : $ff
	.db $ff                                                  ; $ca68 : $ff
	.db $ff                                                  ; $ca69 : $ff
	.db $ff                                                  ; $ca6a : $ff
	.db $ff                                                  ; $ca6b : $ff
	.db $ff                                                  ; $ca6c : $ff
	.db $ff                                                  ; $ca6d : $ff
	.db $ff                                                  ; $ca6e : $ff
	.db $ff                                                  ; $ca6f : $ff
	.db $ff                                                  ; $ca70 : $ff
	.db $ff                                                  ; $ca71 : $ff
	.db $ff                                                  ; $ca72 : $ff
	.db $ff                                                  ; $ca73 : $ff
	.db $ff                                                  ; $ca74 : $ff
	.db $ff                                                  ; $ca75 : $ff
	.db $ff                                                  ; $ca76 : $ff
	.db $ff                                                  ; $ca77 : $ff
	.db $ff                                                  ; $ca78 : $ff
	.db $ff                                                  ; $ca79 : $ff
	.db $ff                                                  ; $ca7a : $ff
	.db $ff                                                  ; $ca7b : $ff
	.db $ff                                                  ; $ca7c : $ff
	.db $ff                                                  ; $ca7d : $ff
	.db $ff                                                  ; $ca7e : $ff
	.db $ff                                                  ; $ca7f : $ff
	.db $1f                                                  ; $ca80 : $1f
	ora ($0e, x)                                                  ; $ca81 : $01, $0e
	adc #$00                                                  ; $ca83 : $69, $00
	.db $1f                                                  ; $ca85 : $1f
	.db $0b                                                  ; $ca86 : $0b
	sei                                                  ; $ca87 : $78
	and $1fff                                                  ; $ca88 : $2d, $ff, $1f
	ora ($1e, x)                                                  ; $ca8b : $01, $1e
	pla                                                  ; $ca8d : $68
	asl $ff                                                  ; $ca8e : $06, $ff
	asl $05.w, x                                                  ; $ca90 : $1e, $05, $00
	.db $ff                                                  ; $ca93 : $ff
	rol $8f                                                  ; $ca94 : $26, $8f
	ora $ac                                                  ; $ca96 : $05, $ac
	lsr $0f                                                  ; $ca98 : $46, $0f
	.db $1f                                                  ; $ca9a : $1f
	.db $04                                                  ; $ca9b : $04
	inx                                                  ; $ca9c : $e8
	bpl $38                                                  ; $ca9d : $10, $38

	bcc $66                                                  ; $ca9f : $90, $66

	ora ($fb), y                                                  ; $caa1 : $11, $fb
	.db $3c                                                  ; $caa3 : $3c
	.db $9b                                                  ; $caa4 : $9b
	.db $b7                                                  ; $caa5 : $b7
	.db $cb                                                  ; $caa6 : $cb
	sta $29                                                  ; $caa7 : $85, $29
	.db $87                                                  ; $caa9 : $87
	sta $07, x                                                  ; $caaa : $95, $07
	.db $eb                                                  ; $caac : $eb
	.db $02                                                  ; $caad : $02
	.db $0b                                                  ; $caae : $0b
	.db $82                                                  ; $caaf : $82
	stx $0e, y                                                  ; $cab0 : $96, $0e
	.db $c3                                                  ; $cab2 : $c3
	asl $1fff                                                  ; $cab3 : $0e, $ff, $1f
	ora ($e6, x)                                                  ; $cab6 : $01, $e6
	ora ($ff), y                                                  ; $cab8 : $11, $ff
	.db $3b                                                  ; $caba : $3b
	stx $7b                                                  ; $cabb : $86, $7b
	.db $00                                                  ; $cabd : $00
	.db $bb                                                  ; $cabe : $bb
	.db $02                                                  ; $cabf : $02
	.db $2b                                                  ; $cac0 : $2b
	stx $057a                                                  ; $cac1 : $8e, $7a, $05
	.db $57                                                  ; $cac4 : $57
	.db $87                                                  ; $cac5 : $87
	.db $27                                                  ; $cac6 : $27
	.db $8f                                                  ; $cac7 : $8f
	txs                                                  ; $cac8 : $9a
	.db $0c                                                  ; $cac9 : $0c
	.db $ff                                                  ; $caca : $ff
	eor $31, x                                                  ; $cacb : $55, $31
	ora $cf01                                                  ; $cacd : $0d, $01, $cf
	.db $33                                                  ; $cad0 : $33
	inc $fe39, x                                                  ; $cad1 : $fe, $39, $fe
	.db $b2                                                  ; $cad4 : $b2
	rol $febe                                                  ; $cad5 : $2e, $be, $fe
	and ($29), y                                                  ; $cad8 : $31, $29
	.db $8f                                                  ; $cada : $8f
	.db $9e                                                  ; $cadb : $9e
	.db $43                                                  ; $cadc : $43
	inc $1630, x                                                  ; $cadd : $fe, $30, $16
	lda ($23), y                                                  ; $cae0 : $b1, $23
	ora #$4e                                                  ; $cae2 : $09, $4e
	and ($4e), y                                                  ; $cae4 : $31, $4e
	rti                                                  ; $cae6 : $40


	.db $d7                                                  ; $cae7 : $d7
	cpx #$e6                                                  ; $cae8 : $e0, $e6
	adc ($fe, x)                                                  ; $caea : $61, $fe
	rol $62f5, x                                                  ; $caec : $3e, $f5, $62
	.db $fa                                                  ; $caef : $fa
	rts                                                  ; $caf0 : $60


	.db $0c                                                  ; $caf1 : $0c
	.db $df                                                  ; $caf2 : $df
	.db $0c                                                  ; $caf3 : $0c
	.db $df                                                  ; $caf4 : $df
	.db $0c                                                  ; $caf5 : $0c
	cmp ($1e), y                                                  ; $caf6 : $d1, $1e
	.db $3c                                                  ; $caf8 : $3c
	and $4e40                                                  ; $caf9 : $2d, $40, $4e
	.db $32                                                  ; $cafc : $32
	lsr $5e36, x                                                  ; $cafd : $5e, $36, $5e
	.db $42                                                  ; $cb00 : $42
	dec $0d38                                                  ; $cb01 : $ce, $38, $0d
	.db $0b                                                  ; $cb04 : $0b
	stx $8e36                                                  ; $cb05 : $8e, $36, $8e
	rti                                                  ; $cb08 : $40


	.db $87                                                  ; $cb09 : $87

br_02_cb0a:
	.db $37                                                  ; $cb0a : $37
	stx $36, y                                                  ; $cb0b : $96, $36
	ldx $cc3a, y                                                  ; $cb0d : $be, $3a, $cc
	eor $bd06, x                                                  ; $cb10 : $5d, $06, $bd
	.db $07                                                  ; $cb13 : $07
	rol $64a8, x                                                  ; $cb14 : $3e, $a8, $64
	clv                                                  ; $cb17 : $b8
	.db $64                                                  ; $cb18 : $64
	iny                                                  ; $cb19 : $c8
	.db $64                                                  ; $cb1a : $64
	cld                                                  ; $cb1b : $d8
	.db $64                                                  ; $cb1c : $64
	inx                                                  ; $cb1d : $e8
	.db $64                                                  ; $cb1e : $64
	sed                                                  ; $cb1f : $f8
	.db $64                                                  ; $cb20 : $64
	inc $0931, x                                                  ; $cb21 : $fe, $31, $09
	sbc ($1a, x)                                                  ; $cb24 : $e1, $1a
	rts                                                  ; $cb26 : $60


	adc $9f41                                                  ; $cb27 : $6d, $41, $9f
	rol $7d                                                  ; $cb2a : $26, $7d
	.db $c7                                                  ; $cb2c : $c7
	sbc $f100, x                                                  ; $cb2d : $fd, $00, $f1
	inc $0db5, x                                                  ; $cb30 : $fe, $b5, $0d
	.db $02                                                  ; $cb33 : $02
	inc $0734, x                                                  ; $cb34 : $fe, $34, $07
	.db $cf                                                  ; $cb37 : $cf
	dec $0d00                                                  ; $cb38 : $ce, $00, $0d
	ora $8d                                                  ; $cb3b : $05, $8d
	.db $47                                                  ; $cb3d : $47
	sbc $0250, x                                                  ; $cb3e : $fd, $50, $02
	.db $9f                                                  ; $cb41 : $9f
	sec                                                  ; $cb42 : $38
	inc $1201                                                  ; $cb43 : $ee, $01, $12
	lda $7b77, y                                                  ; $cb46 : $b9, $77, $7b
	dec $6d0f, x                                                  ; $cb49 : $de, $0f, $6d
	.db $c7                                                  ; $cb4c : $c7
	sbc $fdfd, x                                                  ; $cb4d : $fd, $fd, $fd
	.db $00                                                  ; $cb50 : $00
	lda ($0a, x)                                                  ; $cb51 : $a1, $0a
	rts                                                  ; $cb53 : $60


	ora $2861, y                                                  ; $cb54 : $19, $61, $28
	.db $62                                                  ; $cb57 : $62
	and $5871, y                                                  ; $cb58 : $39, $71, $58
	.db $62                                                  ; $cb5b : $62
	adc #$61                                                  ; $cb5c : $69, $61
	.db $7a                                                  ; $cb5e : $7a
	rts                                                  ; $cb5f : $60


	.db $7c                                                  ; $cb60 : $7c
	sbc $a5, x                                                  ; $cb61 : $f5, $a5
	ora ($fe), y                                                  ; $cb63 : $11, $fe
	jsr $801f                                                  ; $cb65 : $20, $1f, $80
	lsr $8021, x                                                  ; $cb68 : $5e, $21, $80
	.db $3f                                                  ; $cb6b : $3f
	.db $8f                                                  ; $cb6c : $8f
	adc $d6                                                  ; $cb6d : $65, $d6
	.db $74                                                  ; $cb6f : $74
	lsr $6fa0, x                                                  ; $cb70 : $5e, $a0, $6f
	ror $9e                                                  ; $cb73 : $66, $9e
	and ($c3, x)                                                  ; $cb75 : $21, $c3
	.db $37                                                  ; $cb77 : $37
	.db $47                                                  ; $cb78 : $47
	.db $f3                                                  ; $cb79 : $f3
	.db $9e                                                  ; $cb7a : $9e
	jsr $21fe                                                  ; $cb7b : $20, $fe, $21
	ora $5706                                                  ; $cb7e : $0d, $06, $57
	.db $32                                                  ; $cb81 : $32
	.db $64                                                  ; $cb82 : $64
	ora ($66), y                                                  ; $cb83 : $11, $66
	bpl br_02_cb0a                                                  ; $cb85 : $10, $83

	.db $a7                                                  ; $cb87 : $a7
	.db $87                                                  ; $cb88 : $87
	.db $27                                                  ; $cb89 : $27
	ora $1d09                                                  ; $cb8a : $0d, $09, $1d
	lsr a                                                  ; $cb8d : $4a
	.db $5f                                                  ; $cb8e : $5f
	sec                                                  ; $cb8f : $38
	adc $afc1                                                  ; $cb90 : $6d, $c1, $af
	rol $6d                                                  ; $cb93 : $26, $6d
	.db $c7                                                  ; $cb95 : $c7
	sbc $1150, x                                                  ; $cb96 : $fd, $50, $11
	.db $d7                                                  ; $cb99 : $d7
	.db $73                                                  ; $cb9a : $73
	inc $6f1a, x                                                  ; $cb9b : $fe, $1a, $6f
	.db $e2                                                  ; $cb9e : $e2
	.db $1f                                                  ; $cb9f : $1f
	sbc $bf                                                  ; $cba0 : $e5, $bf
	.db $63                                                  ; $cba2 : $63
	.db $c7                                                  ; $cba3 : $c7
	tay                                                  ; $cba4 : $a8
	.db $df                                                  ; $cba5 : $df
	adc ($15, x)                                                  ; $cba6 : $61, $15
	sbc ($7f), y                                                  ; $cba8 : $f1, $7f
	.db $62                                                  ; $cbaa : $62
	.db $9b                                                  ; $cbab : $9b
	.db $2f                                                  ; $cbac : $2f
	tay                                                  ; $cbad : $a8
	.db $72                                                  ; $cbae : $72
	inc $6910, x                                                  ; $cbaf : $fe, $10, $69
	sbc ($b7), y                                                  ; $cbb2 : $f1, $b7
	and $c5                                                  ; $cbb4 : $25, $c5
	adc ($33), y                                                  ; $cbb6 : $71, $33
	ldy $715f                                                  ; $cbb8 : $ac, $5f, $71
	sta $aa4a                                                  ; $cbbb : $8d, $4a, $aa
	.db $14                                                  ; $cbbe : $14
	cmp ($71), y                                                  ; $cbbf : $d1, $71
	.db $17                                                  ; $cbc1 : $17
	sta $26, x                                                  ; $cbc2 : $95, $26
	.db $42                                                  ; $cbc4 : $42
	.db $72                                                  ; $cbc5 : $72
	.db $42                                                  ; $cbc6 : $42
	.db $73                                                  ; $cbc7 : $73
	.db $12                                                  ; $cbc8 : $12
	.db $7a                                                  ; $cbc9 : $7a
	.db $14                                                  ; $cbca : $14
	dec $14                                                  ; $cbcb : $c6, $14
	cmp $42, x                                                  ; $cbcd : $d5, $42
	inc $7f11, x                                                  ; $cbcf : $fe, $11, $7f
	clv                                                  ; $cbd2 : $b8
	sta $cfc1                                                  ; $cbd3 : $8d, $c1, $cf
	rol $6d                                                  ; $cbd6 : $26, $6d
	.db $c7                                                  ; $cbd8 : $c7
	sbc $57.w, x                                                  ; $cbd9 : $fd, $57, $00
	.db $0b                                                  ; $cbdc : $0b
	.db $3f                                                  ; $cbdd : $3f
	.db $0b                                                  ; $cbde : $0b
	.db $bf                                                  ; $cbdf : $bf
	.db $0b                                                  ; $cbe0 : $0b
	.db $bf                                                  ; $cbe1 : $bf
	.db $73                                                  ; $cbe2 : $73
	rol $9a, x                                                  ; $cbe3 : $36, $9a
	bmi -$5b                                                  ; $cbe5 : $30, $a5

	.db $64                                                  ; $cbe7 : $64
	ldx $31, y                                                  ; $cbe8 : $b6, $31
	.db $d4                                                  ; $cbea : $d4
	adc ($0b, x)                                                  ; $cbeb : $61, $0b
	.db $bf                                                  ; $cbed : $bf
	.db $13                                                  ; $cbee : $13
	.db $63                                                  ; $cbef : $63
	lsr a                                                  ; $cbf0 : $4a
	rts                                                  ; $cbf1 : $60


	.db $53                                                  ; $cbf2 : $53
	ror $a5                                                  ; $cbf3 : $66, $a5
	.db $34                                                  ; $cbf5 : $34
	.db $b3                                                  ; $cbf6 : $b3
	.db $67                                                  ; $cbf7 : $67
	sbc $65                                                  ; $cbf8 : $e5, $65
	.db $f4                                                  ; $cbfa : $f4
	rts                                                  ; $cbfb : $60


	.db $0b                                                  ; $cbfc : $0b
	.db $bf                                                  ; $cbfd : $bf
	.db $14                                                  ; $cbfe : $14
	rts                                                  ; $cbff : $60


	.db $53                                                  ; $cc00 : $53
	.db $67                                                  ; $cc01 : $67
	.db $67                                                  ; $cc02 : $67
	.db $32                                                  ; $cc03 : $32
	cpy $62                                                  ; $cc04 : $c4, $62
	.db $d4                                                  ; $cc06 : $d4
	and ($f3), y                                                  ; $cc07 : $31, $f3
	adc ($fa, x)                                                  ; $cc09 : $61, $fa
	rts                                                  ; $cc0b : $60


	.db $0b                                                  ; $cc0c : $0b
	.db $bf                                                  ; $cc0d : $bf
	.db $04                                                  ; $cc0e : $04
	bmi br_02_cc1a                                                  ; $cc0f : $30, $09

	adc ($14, x)                                                  ; $cc11 : $61, $14
	adc $63                                                  ; $cc13 : $65, $63
	adc $6a                                                  ; $cc15 : $65, $6a
	rts                                                  ; $cc17 : $60


	.db $0b                                                  ; $cc18 : $0b
	.db $bf                                                  ; $cc19 : $bf

br_02_cc1a:
	.db $0f                                                  ; $cc1a : $0f
	sec                                                  ; $cc1b : $38
	.db $0b                                                  ; $cc1c : $0b
	.db $bf                                                  ; $cc1d : $bf
	ora $3e41, x                                                  ; $cc1e : $1d, $41, $3e
	.db $42                                                  ; $cc21 : $42
	.db $5f                                                  ; $cc22 : $5f
	jsr $40ce                                                  ; $cc23 : $20, $ce, $40
	.db $0b                                                  ; $cc26 : $0b
	.db $bf                                                  ; $cc27 : $bf
	and $fd47, x                                                  ; $cc28 : $3d, $47, $fd
	.db $ff                                                  ; $cc2b : $ff
	.db $ff                                                  ; $cc2c : $ff
	.db $ff                                                  ; $cc2d : $ff
	.db $ff                                                  ; $cc2e : $ff
	.db $ff                                                  ; $cc2f : $ff
	.db $ff                                                  ; $cc30 : $ff
	.db $ff                                                  ; $cc31 : $ff
	.db $ff                                                  ; $cc32 : $ff
	.db $ff                                                  ; $cc33 : $ff
	.db $ff                                                  ; $cc34 : $ff
	.db $ff                                                  ; $cc35 : $ff
	.db $ff                                                  ; $cc36 : $ff
	.db $ff                                                  ; $cc37 : $ff
	.db $ff                                                  ; $cc38 : $ff
	.db $ff                                                  ; $cc39 : $ff
	.db $ff                                                  ; $cc3a : $ff
	.db $ff                                                  ; $cc3b : $ff
	.db $ff                                                  ; $cc3c : $ff
	.db $ff                                                  ; $cc3d : $ff
	.db $ff                                                  ; $cc3e : $ff
	.db $ff                                                  ; $cc3f : $ff
	.db $ff                                                  ; $cc40 : $ff
	.db $ff                                                  ; $cc41 : $ff
	.db $ff                                                  ; $cc42 : $ff
	.db $ff                                                  ; $cc43 : $ff
	.db $ff                                                  ; $cc44 : $ff
	.db $ff                                                  ; $cc45 : $ff
	.db $ff                                                  ; $cc46 : $ff
	.db $ff                                                  ; $cc47 : $ff
	.db $ff                                                  ; $cc48 : $ff
	.db $ff                                                  ; $cc49 : $ff
	.db $ff                                                  ; $cc4a : $ff
	.db $ff                                                  ; $cc4b : $ff
	.db $ff                                                  ; $cc4c : $ff
	.db $ff                                                  ; $cc4d : $ff
	.db $ff                                                  ; $cc4e : $ff
	.db $ff                                                  ; $cc4f : $ff
	.db $ff                                                  ; $cc50 : $ff
	.db $ff                                                  ; $cc51 : $ff
	.db $ff                                                  ; $cc52 : $ff
	.db $ff                                                  ; $cc53 : $ff
	.db $ff                                                  ; $cc54 : $ff
	.db $ff                                                  ; $cc55 : $ff
	.db $ff                                                  ; $cc56 : $ff
	.db $ff                                                  ; $cc57 : $ff
	.db $ff                                                  ; $cc58 : $ff
	.db $ff                                                  ; $cc59 : $ff
	.db $ff                                                  ; $cc5a : $ff
	.db $ff                                                  ; $cc5b : $ff
	.db $ff                                                  ; $cc5c : $ff
	.db $ff                                                  ; $cc5d : $ff
	.db $ff                                                  ; $cc5e : $ff
	lda $0776                                                  ; $cc5f : $ad, $76, $07
	beq br_02_cc6e                                                  ; $cc62 : $f0, $0a

	lda #$80                                                  ; $cc64 : $a9, $80
	sta $4080                                                  ; $cc66 : $8d, $80, $40
	lsr a                                                  ; $cc69 : $4a
	sta SND_CHN                                                  ; $cc6a : $8d, $15, $40
	rts                                                  ; $cc6d : $60


br_02_cc6e:
	lda #$ff                                                  ; $cc6e : $a9, $ff
	sta FRAME_COUNTER_CTRL                                                  ; $cc70 : $8d, $17, $40
	lda #$0f                                                  ; $cc73 : $a9, $0f
	sta SND_CHN                                                  ; $cc75 : $8d, $15, $40
	jsr $d54c                                                  ; $cc78 : $20, $4c, $d5
	jsr Call_02_cc88                                                  ; $cc7b : $20, $88, $cc
	lda #$00                                                  ; $cc7e : $a9, $00
	sta $fb                                                  ; $cc80 : $85, $fb
	sta $fe                                                  ; $cc82 : $85, $fe
	rts                                                  ; $cc84 : $60


br_02_cc85:
	jmp Jump_02_cd01                                                  ; $cc85 : $4c, $01, $cd


Call_02_cc88:
	lda $fb                                                  ; $cc88 : $a5, $fb
	bne br_02_cc92                                                  ; $cc8a : $d0, $06

	lda $0608                                                  ; $cc8c : $ad, $08, $06
	bne br_02_cc85                                                  ; $cc8f : $d0, $f4

	rts                                                  ; $cc91 : $60


br_02_cc92:
	ldy #$00                                                  ; $cc92 : $a0, $00
	sty $061d                                                  ; $cc94 : $8c, $1d, $06
	sta $0608                                                  ; $cc97 : $8d, $08, $06

Jump_02_cc9a:
	inc $061d                                                  ; $cc9a : $ee, $1d, $06
	ldy $061d                                                  ; $cc9d : $ac, $1d, $06
	cpy #$0c                                                  ; $cca0 : $c0, $0c
	bne br_02_cca7                                                  ; $cca2 : $d0, $03

	jmp Jump_02_cd19                                                  ; $cca4 : $4c, $19, $cd


br_02_cca7:
	lda $cff9, y                                                  ; $cca7 : $b9, $f9, $cf
	tay                                                  ; $ccaa : $a8
	lda $cffa, y                                                  ; $ccab : $b9, $fa, $cf
	sta $0609                                                  ; $ccae : $8d, $09, $06
	lda $cffb, y                                                  ; $ccb1 : $b9, $fb, $cf
	sta $66                                                  ; $ccb4 : $85, $66
	lda $cffc, y                                                  ; $ccb6 : $b9, $fc, $cf
	sta $67                                                  ; $ccb9 : $85, $67
	lda $cffd, y                                                  ; $ccbb : $b9, $fd, $cf
	sta $060c                                                  ; $ccbe : $8d, $0c, $06
	lda $cffe, y                                                  ; $ccc1 : $b9, $fe, $cf
	sta $060b                                                  ; $ccc4 : $8d, $0b, $06
	lda $cfff, y                                                  ; $ccc7 : $b9, $ff, $cf
	sta $060d                                                  ; $ccca : $8d, $0d, $06
	sta $061b                                                  ; $cccd : $8d, $1b, $06
	lda $d000, y                                                  ; $ccd0 : $b9, $00, $d0
	sta $061f                                                  ; $ccd3 : $8d, $1f, $06
	lda $d001, y                                                  ; $ccd6 : $b9, $01, $d0
	sta $060e                                                  ; $ccd9 : $8d, $0e, $06
	sta $01                                                  ; $ccdc : $85, $01
	jsr Call_02_ceed                                                  ; $ccde : $20, $ed, $ce
	lda #$01                                                  ; $cce1 : $a9, $01
	sta $0611                                                  ; $cce3 : $8d, $11, $06
	sta $0613                                                  ; $cce6 : $8d, $13, $06
	sta $0616                                                  ; $cce9 : $8d, $16, $06
	sta $0617                                                  ; $ccec : $8d, $17, $06
	sta $05f1                                                  ; $ccef : $8d, $f1, $05
	lda #$00                                                  ; $ccf2 : $a9, $00
	sta $060a                                                  ; $ccf4 : $8d, $0a, $06
	lda #$0b                                                  ; $ccf7 : $a9, $0b
	sta SND_CHN                                                  ; $ccf9 : $8d, $15, $40
	lda #$0f                                                  ; $ccfc : $a9, $0f
	sta SND_CHN                                                  ; $ccfe : $8d, $15, $40

Jump_02_cd01:
	dec $0611                                                  ; $cd01 : $ce, $11, $06
	bne br_02_cd6b                                                  ; $cd04 : $d0, $65

	ldy $060a                                                  ; $cd06 : $ac, $0a, $06
	inc $060a                                                  ; $cd09 : $ee, $0a, $06
	lda ($66), y                                                  ; $cd0c : $b1, $66
	beq br_02_cd14                                                  ; $cd0e : $f0, $04

	bpl br_02_cd50                                                  ; $cd10 : $10, $3e

	bne br_02_cd42                                                  ; $cd12 : $d0, $2e

br_02_cd14:
	lda $0608                                                  ; $cd14 : $ad, $08, $06
	bne br_02_cd3f                                                  ; $cd17 : $d0, $26

Jump_02_cd19:
	lda #$00                                                  ; $cd19 : $a9, $00
	sta $0608                                                  ; $cd1b : $8d, $08, $06
	sta TRI_LINEAR                                                  ; $cd1e : $8d, $08, $40
	sta $67                                                  ; $cd21 : $85, $67
	sta $66                                                  ; $cd23 : $85, $66
	sta $060a                                                  ; $cd25 : $8d, $0a, $06
	sta $060b                                                  ; $cd28 : $8d, $0b, $06
	sta $060c                                                  ; $cd2b : $8d, $0c, $06
	sta $060d                                                  ; $cd2e : $8d, $0d, $06
	lda #$90                                                  ; $cd31 : $a9, $90
	sta SQ1_VOL                                                  ; $cd33 : $8d, $00, $40
	sta SQ2_VOL                                                  ; $cd36 : $8d, $04, $40
	lda #$80                                                  ; $cd39 : $a9, $80
	sta $4080                                                  ; $cd3b : $8d, $80, $40
	rts                                                  ; $cd3e : $60


br_02_cd3f:
	jmp Jump_02_cc9a                                                  ; $cd3f : $4c, $9a, $cc


br_02_cd42:
	jsr Call_02_cfac                                                  ; $cd42 : $20, $ac, $cf
	sta $0610                                                  ; $cd45 : $8d, $10, $06
	ldy $060a                                                  ; $cd48 : $ac, $0a, $06
	inc $060a                                                  ; $cd4b : $ee, $0a, $06
	lda ($66), y                                                  ; $cd4e : $b1, $66

br_02_cd50:
	ldx $f2                                                  ; $cd50 : $a6, $f2
	bne br_02_cd65                                                  ; $cd52 : $d0, $11

	jsr Call_02_cfdf                                                  ; $cd54 : $20, $df, $cf
	beq br_02_cd5f                                                  ; $cd57 : $f0, $06

	lda #$10                                                  ; $cd59 : $a9, $10
	ldx #$82                                                  ; $cd5b : $a2, $82
	ldy #$7f                                                  ; $cd5d : $a0, $7f

br_02_cd5f:
	sta $0612                                                  ; $cd5f : $8d, $12, $06
	jsr Call_02_cfd5                                                  ; $cd62 : $20, $d5, $cf

br_02_cd65:
	lda $0610                                                  ; $cd65 : $ad, $10, $06
	sta $0611                                                  ; $cd68 : $8d, $11, $06

br_02_cd6b:
	lda $f2                                                  ; $cd6b : $a5, $f2
	bne br_02_cd7d                                                  ; $cd6d : $d0, $0e

	ldy $0612                                                  ; $cd6f : $ac, $12, $06
	beq br_02_cd77                                                  ; $cd72 : $f0, $03

	dec $0612                                                  ; $cd74 : $ce, $12, $06

br_02_cd77:
	lda $d23c, y                                                  ; $cd77 : $b9, $3c, $d2
	sta SQ2_VOL                                                  ; $cd7a : $8d, $04, $40

br_02_cd7d:
	ldy $060b                                                  ; $cd7d : $ac, $0b, $06
	beq br_02_cdbc                                                  ; $cd80 : $f0, $3a

	dec $0613                                                  ; $cd82 : $ce, $13, $06
	bne br_02_cda9                                                  ; $cd85 : $d0, $22

	ldy $060b                                                  ; $cd87 : $ac, $0b, $06
	inc $060b                                                  ; $cd8a : $ee, $0b, $06
	lda ($66), y                                                  ; $cd8d : $b1, $66
	jsr Call_02_cfa6                                                  ; $cd8f : $20, $a6, $cf
	sta $0613                                                  ; $cd92 : $8d, $13, $06
	txa                                                  ; $cd95 : $8a
	and #$3e                                                  ; $cd96 : $29, $3e
	jsr Call_02_cfc1                                                  ; $cd98 : $20, $c1, $cf
	beq br_02_cda3                                                  ; $cd9b : $f0, $06

	lda #$10                                                  ; $cd9d : $a9, $10
	ldx #$82                                                  ; $cd9f : $a2, $82
	ldy #$7f                                                  ; $cda1 : $a0, $7f

br_02_cda3:
	sta $0614                                                  ; $cda3 : $8d, $14, $06
	jsr Call_02_cfb7                                                  ; $cda6 : $20, $b7, $cf

br_02_cda9:
	ldy $0614                                                  ; $cda9 : $ac, $14, $06
	beq br_02_cdb1                                                  ; $cdac : $f0, $03

	dec $0614                                                  ; $cdae : $ce, $14, $06

br_02_cdb1:
	lda $d23c, y                                                  ; $cdb1 : $b9, $3c, $d2
	sta SQ1_VOL                                                  ; $cdb4 : $8d, $00, $40
	lda #$7f                                                  ; $cdb7 : $a9, $7f
	sta SQ1_SWEEP                                                  ; $cdb9 : $8d, $01, $40

br_02_cdbc:
	lda $060c                                                  ; $cdbc : $ad, $0c, $06
	beq br_02_cdf9                                                  ; $cdbf : $f0, $38

	dec $0616                                                  ; $cdc1 : $ce, $16, $06
	bne br_02_cdf9                                                  ; $cdc4 : $d0, $33

	ldy $060c                                                  ; $cdc6 : $ac, $0c, $06
	inc $060c                                                  ; $cdc9 : $ee, $0c, $06
	lda ($66), y                                                  ; $cdcc : $b1, $66
	beq br_02_cdf6                                                  ; $cdce : $f0, $26

	bpl br_02_cde2                                                  ; $cdd0 : $10, $10

	jsr Call_02_cfac                                                  ; $cdd2 : $20, $ac, $cf
	sta $0615                                                  ; $cdd5 : $8d, $15, $06
	ldy $060c                                                  ; $cdd8 : $ac, $0c, $06
	inc $060c                                                  ; $cddb : $ee, $0c, $06
	lda ($66), y                                                  ; $cdde : $b1, $66
	beq br_02_cdf6                                                  ; $cde0 : $f0, $14

br_02_cde2:
	jsr Call_02_cfe3                                                  ; $cde2 : $20, $e3, $cf
	ldx $0615                                                  ; $cde5 : $ae, $15, $06
	stx $0616                                                  ; $cde8 : $8e, $16, $06
	txa                                                  ; $cdeb : $8a
	cmp #$12                                                  ; $cdec : $c9, $12
	bcs br_02_cdf4                                                  ; $cdee : $b0, $04

	lda #$18                                                  ; $cdf0 : $a9, $18
	bne br_02_cdf6                                                  ; $cdf2 : $d0, $02

br_02_cdf4:
	lda #$ff                                                  ; $cdf4 : $a9, $ff

br_02_cdf6:
	sta TRI_LINEAR                                                  ; $cdf6 : $8d, $08, $40

br_02_cdf9:
	lda $061f                                                  ; $cdf9 : $ad, $1f, $06
	bne br_02_ce01                                                  ; $cdfc : $d0, $03

	jmp Jump_02_cebb                                                  ; $cdfe : $4c, $bb, $ce


br_02_ce01:
	lda $05f1                                                  ; $ce01 : $ad, $f1, $05
	cmp #$02                                                  ; $ce04 : $c9, $02
	bne br_02_ce0d                                                  ; $ce06 : $d0, $05

	lda #$00                                                  ; $ce08 : $a9, $00
	sta $4080                                                  ; $ce0a : $8d, $80, $40

br_02_ce0d:
	dec $05f1                                                  ; $ce0d : $ce, $f1, $05
	bne br_02_ce6e                                                  ; $ce10 : $d0, $5c

	ldy $061f                                                  ; $ce12 : $ac, $1f, $06
	inc $061f                                                  ; $ce15 : $ee, $1f, $06
	lda ($66), y                                                  ; $ce18 : $b1, $66
	bpl br_02_ce2a                                                  ; $ce1a : $10, $0e

	jsr Call_02_cfac                                                  ; $ce1c : $20, $ac, $cf
	sta $05f2                                                  ; $ce1f : $8d, $f2, $05
	ldy $061f                                                  ; $ce22 : $ac, $1f, $06
	inc $061f                                                  ; $ce25 : $ee, $1f, $06
	lda ($66), y                                                  ; $ce28 : $b1, $66

br_02_ce2a:
	jsr Call_02_cfe7                                                  ; $ce2a : $20, $e7, $cf
	tay                                                  ; $ce2d : $a8
	bne br_02_ce37                                                  ; $ce2e : $d0, $07

	ldx #$80                                                  ; $ce30 : $a2, $80
	stx $4080                                                  ; $ce32 : $8e, $80, $40
	bne br_02_ce3d                                                  ; $ce35 : $d0, $06

br_02_ce37:
	jsr Call_02_cf5d                                                  ; $ce37 : $20, $5d, $cf
	ldy $05f7                                                  ; $ce3a : $ac, $f7, $05

br_02_ce3d:
	sty $05f3                                                  ; $ce3d : $8c, $f3, $05
	ldy #$00                                                  ; $ce40 : $a0, $00
	sty $05f9                                                  ; $ce42 : $8c, $f9, $05
	sty $05fb                                                  ; $ce45 : $8c, $fb, $05
	lda ($6a), y                                                  ; $ce48 : $b1, $6a
	sta $4080                                                  ; $ce4a : $8d, $80, $40
	lda ($6c), y                                                  ; $ce4d : $b1, $6c
	sta $4084                                                  ; $ce4f : $8d, $84, $40
	lda #$00                                                  ; $ce52 : $a9, $00
	sta $4085                                                  ; $ce54 : $8d, $85, $40
	iny                                                  ; $ce57 : $c8
	lda ($6a), y                                                  ; $ce58 : $b1, $6a
	sta $05f8                                                  ; $ce5a : $8d, $f8, $05
	lda ($6c), y                                                  ; $ce5d : $b1, $6c
	sta $05fa                                                  ; $ce5f : $8d, $fa, $05
	sty $05f9                                                  ; $ce62 : $8c, $f9, $05
	sty $05fb                                                  ; $ce65 : $8c, $fb, $05
	lda $05f2                                                  ; $ce68 : $ad, $f2, $05
	sta $05f1                                                  ; $ce6b : $8d, $f1, $05

br_02_ce6e:
	lda $05f3                                                  ; $ce6e : $ad, $f3, $05
	beq br_02_cebb                                                  ; $ce71 : $f0, $48

	dec $05f3                                                  ; $ce73 : $ce, $f3, $05
	dec $05f8                                                  ; $ce76 : $ce, $f8, $05
	bne br_02_ce96                                                  ; $ce79 : $d0, $1b

br_02_ce7b:
	inc $05f9                                                  ; $ce7b : $ee, $f9, $05
	ldy $05f9                                                  ; $ce7e : $ac, $f9, $05
	lda ($6a), y                                                  ; $ce81 : $b1, $6a
	bpl br_02_ce8a                                                  ; $ce83 : $10, $05

	sta $4080                                                  ; $ce85 : $8d, $80, $40
	bne br_02_ce7b                                                  ; $ce88 : $d0, $f1

br_02_ce8a:
	sta $4080                                                  ; $ce8a : $8d, $80, $40
	iny                                                  ; $ce8d : $c8
	lda ($6a), y                                                  ; $ce8e : $b1, $6a
	sta $05f8                                                  ; $ce90 : $8d, $f8, $05
	sty $05f9                                                  ; $ce93 : $8c, $f9, $05

br_02_ce96:
	dec $05fa                                                  ; $ce96 : $ce, $fa, $05
	bne br_02_cebb                                                  ; $ce99 : $d0, $20

	inc $05fb                                                  ; $ce9b : $ee, $fb, $05
	ldy $05fb                                                  ; $ce9e : $ac, $fb, $05
	lda ($6c), y                                                  ; $cea1 : $b1, $6c
	sta $4084                                                  ; $cea3 : $8d, $84, $40
	iny                                                  ; $cea6 : $c8
	lda ($6c), y                                                  ; $cea7 : $b1, $6c
	sta $4086                                                  ; $cea9 : $8d, $86, $40
	iny                                                  ; $ceac : $c8
	lda ($6c), y                                                  ; $cead : $b1, $6c
	sta $4087                                                  ; $ceaf : $8d, $87, $40
	iny                                                  ; $ceb2 : $c8
	lda ($6c), y                                                  ; $ceb3 : $b1, $6c
	sta $05fa                                                  ; $ceb5 : $8d, $fa, $05
	sty $05fb                                                  ; $ceb8 : $8c, $fb, $05

Jump_02_cebb:
br_02_cebb:
	dec $0617                                                  ; $cebb : $ce, $17, $06
	bne br_02_ceec                                                  ; $cebe : $d0, $2c

br_02_cec0:
	ldy $060d                                                  ; $cec0 : $ac, $0d, $06
	inc $060d                                                  ; $cec3 : $ee, $0d, $06
	lda ($66), y                                                  ; $cec6 : $b1, $66
	bne br_02_ced2                                                  ; $cec8 : $d0, $08

	lda $061b                                                  ; $ceca : $ad, $1b, $06
	sta $060d                                                  ; $cecd : $8d, $0d, $06
	bne br_02_cec0                                                  ; $ced0 : $d0, $ee

br_02_ced2:
	jsr Call_02_cfa6                                                  ; $ced2 : $20, $a6, $cf
	sta $0617                                                  ; $ced5 : $8d, $17, $06
	txa                                                  ; $ced8 : $8a
	and #$3e                                                  ; $ced9 : $29, $3e
	beq br_02_cee3                                                  ; $cedb : $f0, $06

	lda #$1c                                                  ; $cedd : $a9, $1c
	ldx #$03                                                  ; $cedf : $a2, $03
	ldy #$18                                                  ; $cee1 : $a0, $18

br_02_cee3:
	sta NOISE_VOL                                                  ; $cee3 : $8d, $0c, $40
	stx NOISE_LO                                                  ; $cee6 : $8e, $0e, $40
	sty NOISE_HI                                                  ; $cee9 : $8c, $0f, $40

br_02_ceec:
	rts                                                  ; $ceec : $60


Call_02_ceed:
	lda $01                                                  ; $ceed : $a5, $01
	bne br_02_cef2                                                  ; $ceef : $d0, $01

	rts                                                  ; $cef1 : $60


br_02_cef2:
	ldy #$00                                                  ; $cef2 : $a0, $00

br_02_cef4:
	iny                                                  ; $cef4 : $c8
	lsr a                                                  ; $cef5 : $4a
	bcc br_02_cef4                                                  ; $cef6 : $90, $fc

	lda $d24b, y                                                  ; $cef8 : $b9, $4b, $d2
	tay                                                  ; $cefb : $a8
	lda $d24c, y                                                  ; $cefc : $b9, $4c, $d2
	sta $68                                                  ; $ceff : $85, $68
	lda $d24d, y                                                  ; $cf01 : $b9, $4d, $d2
	sta $69                                                  ; $cf04 : $85, $69
	lda $d24e, y                                                  ; $cf06 : $b9, $4e, $d2
	sta $05f7                                                  ; $cf09 : $8d, $f7, $05
	lda $d24f, y                                                  ; $cf0c : $b9, $4f, $d2
	sta $6a                                                  ; $cf0f : $85, $6a
	lda $d250, y                                                  ; $cf11 : $b9, $50, $d2
	sta $6b                                                  ; $cf14 : $85, $6b
	lda $d251, y                                                  ; $cf16 : $b9, $51, $d2
	sta $6c                                                  ; $cf19 : $85, $6c
	lda $d252, y                                                  ; $cf1b : $b9, $52, $d2
	sta $6d                                                  ; $cf1e : $85, $6d
	lda $d253, y                                                  ; $cf20 : $b9, $53, $d2
	sta $05f6                                                  ; $cf23 : $8d, $f6, $05
	jsr Call_02_cf2f                                                  ; $cf26 : $20, $2f, $cf
	lda #$02                                                  ; $cf29 : $a9, $02
	sta $4089                                                  ; $cf2b : $8d, $89, $40
	rts                                                  ; $cf2e : $60


Call_02_cf2f:
	lda #$80                                                  ; $cf2f : $a9, $80
	sta $4089                                                  ; $cf31 : $8d, $89, $40
	lda #$00                                                  ; $cf34 : $a9, $00
	sta $4040                                                  ; $cf36 : $8d, $40, $40
	ldy #$00                                                  ; $cf39 : $a0, $00
	ldx #$3f                                                  ; $cf3b : $a2, $3f

br_02_cf3d:
	lda ($68), y                                                  ; $cf3d : $b1, $68
	sta $4041, y                                                  ; $cf3f : $99, $41, $40
	iny                                                  ; $cf42 : $c8
	cpy #$20                                                  ; $cf43 : $c0, $20
	beq br_02_cf4d                                                  ; $cf45 : $f0, $06

	sta $4040, x                                                  ; $cf47 : $9d, $40, $40
	dex                                                  ; $cf4a : $ca
	bne br_02_cf3d                                                  ; $cf4b : $d0, $f0

br_02_cf4d:
	lda $0608                                                  ; $cf4d : $ad, $08, $06
	and #$40                                                  ; $cf50 : $29, $40
	beq br_02_cf58                                                  ; $cf52 : $f0, $04

	lda #$00                                                  ; $cf54 : $a9, $00
	beq br_02_cf5a                                                  ; $cf56 : $f0, $02

br_02_cf58:
	lda #$03                                                  ; $cf58 : $a9, $03

br_02_cf5a:
	sta $4089                                                  ; $cf5a : $8d, $89, $40

Call_02_cf5d:
	lda #$80                                                  ; $cf5d : $a9, $80
	sta $4087                                                  ; $cf5f : $8d, $87, $40
	lda #$00                                                  ; $cf62 : $a9, $00
	sta $4085                                                  ; $cf64 : $8d, $85, $40
	ldx #$20                                                  ; $cf67 : $a2, $20
	ldy $05f6                                                  ; $cf69 : $ac, $f6, $05
	sty $02                                                  ; $cf6c : $84, $02

br_02_cf6e:
	lda $02                                                  ; $cf6e : $a5, $02
	lsr a                                                  ; $cf70 : $4a
	tay                                                  ; $cf71 : $a8
	lda $cf86, y                                                  ; $cf72 : $b9, $86, $cf
	bcs br_02_cf7b                                                  ; $cf75 : $b0, $04

	lsr a                                                  ; $cf77 : $4a
	lsr a                                                  ; $cf78 : $4a
	lsr a                                                  ; $cf79 : $4a
	lsr a                                                  ; $cf7a : $4a

br_02_cf7b:
	and #$0f                                                  ; $cf7b : $29, $0f
	sta $4088                                                  ; $cf7d : $8d, $88, $40
	inc $02                                                  ; $cf80 : $e6, $02
	dex                                                  ; $cf82 : $ca
	bne br_02_cf6e                                                  ; $cf83 : $d0, $e9

	rts                                                  ; $cf85 : $60


	.db $07                                                  ; $cf86 : $07
	.db $07                                                  ; $cf87 : $07
	.db $07                                                  ; $cf88 : $07
	.db $07                                                  ; $cf89 : $07
	ora ($01, x)                                                  ; $cf8a : $01, $01
	ora ($01, x)                                                  ; $cf8c : $01, $01
	ora ($01, x)                                                  ; $cf8e : $01, $01
	ora ($01, x)                                                  ; $cf90 : $01, $01
	.db $07                                                  ; $cf92 : $07
	.db $07                                                  ; $cf93 : $07
	.db $07                                                  ; $cf94 : $07
	.db $07                                                  ; $cf95 : $07
	.db $77                                                  ; $cf96 : $77
	.db $77                                                  ; $cf97 : $77
	.db $77                                                  ; $cf98 : $77
	.db $77                                                  ; $cf99 : $77
	ora ($11), y                                                  ; $cf9a : $11, $11
	ora ($11), y                                                  ; $cf9c : $11, $11
	ora ($11), y                                                  ; $cf9e : $11, $11
	ora ($11), y                                                  ; $cfa0 : $11, $11
	.db $77                                                  ; $cfa2 : $77
	.db $77                                                  ; $cfa3 : $77
	.db $77                                                  ; $cfa4 : $77
	.db $77                                                  ; $cfa5 : $77

Call_02_cfa6:
	tax                                                  ; $cfa6 : $aa
	ror a                                                  ; $cfa7 : $6a
	txa                                                  ; $cfa8 : $8a
	rol a                                                  ; $cfa9 : $2a
	rol a                                                  ; $cfaa : $2a
	rol a                                                  ; $cfab : $2a

Call_02_cfac:
	and #$07                                                  ; $cfac : $29, $07
	clc                                                  ; $cfae : $18
	adc $0609                                                  ; $cfaf : $6d, $09, $06
	tay                                                  ; $cfb2 : $a8
	lda $d28f, y                                                  ; $cfb3 : $b9, $8f, $d2
	rts                                                  ; $cfb6 : $60


Call_02_cfb7:
	sty SQ1_SWEEP                                                  ; $cfb7 : $8c, $01, $40
	stx SQ1_VOL                                                  ; $cfba : $8e, $00, $40

br_02_cfbd:
	rts                                                  ; $cfbd : $60


	jsr Call_02_cfb7                                                  ; $cfbe : $20, $b7, $cf

Call_02_cfc1:
	ldx #$00                                                  ; $cfc1 : $a2, $00

br_02_cfc3:
	tay                                                  ; $cfc3 : $a8
	lda $df01, y                                                  ; $cfc4 : $b9, $01, $df
	beq br_02_cfd4                                                  ; $cfc7 : $f0, $0b

	sta SQ1_LO, x                                                  ; $cfc9 : $9d, $02, $40
	lda $df00, y                                                  ; $cfcc : $b9, $00, $df
	ora #$08                                                  ; $cfcf : $09, $08

br_02_cfd1:
	sta SQ1_HI, x                                                  ; $cfd1 : $9d, $03, $40

br_02_cfd4:
	rts                                                  ; $cfd4 : $60


Call_02_cfd5:
	stx SQ2_VOL                                                  ; $cfd5 : $8e, $04, $40
	sty SQ2_SWEEP                                                  ; $cfd8 : $8c, $05, $40
	rts                                                  ; $cfdb : $60


	jsr Call_02_cfd5                                                  ; $cfdc : $20, $d5, $cf

Call_02_cfdf:
	ldx #$04                                                  ; $cfdf : $a2, $04
	bne br_02_cfc3                                                  ; $cfe1 : $d0, $e0

Call_02_cfe3:
	ldx #$08                                                  ; $cfe3 : $a2, $08
	bne br_02_cfc3                                                  ; $cfe5 : $d0, $dc

Call_02_cfe7:
br_02_cfe7:
	ldx #$80                                                  ; $cfe7 : $a2, $80
	stx $4083                                                  ; $cfe9 : $8e, $83, $40
	tay                                                  ; $cfec : $a8
	lda $d200, y                                                  ; $cfed : $b9, $00, $d2
	sta $4083                                                  ; $cff0 : $8d, $83, $40
	lda $d201, y                                                  ; $cff3 : $b9, $01, $d2
	sta $4082                                                  ; $cff6 : $8d, $82, $40
	rts                                                  ; $cff9 : $60


	.db $0b                                                  ; $cffa : $0b
	.db $0b                                                  ; $cffb : $0b
	.db $13                                                  ; $cffc : $13
	.db $0b                                                  ; $cffd : $0b
	.db $1b                                                  ; $cffe : $1b
	.db $33                                                  ; $cfff : $33
	.db $1b                                                  ; $d000 : $1b
	.db $33                                                  ; $d001 : $33
	.db $23                                                  ; $d002 : $23
	.db $1b                                                  ; $d003 : $1b
	.db $2b                                                  ; $d004 : $2b
	.db $00                                                  ; $d005 : $00
	sec                                                  ; $d006 : $38
	bne br_02_d047                                                  ; $d007 : $d0, $3e

	.db $14                                                  ; $d009 : $14
	bcs br_02_d030                                                  ; $d00a : $b0, $24

	ora ($00, x)                                                  ; $d00c : $01, $00
	.db $87                                                  ; $d00e : $87
	bne br_02_d061                                                  ; $d00f : $d0, $50

	and ($61, x)                                                  ; $d011 : $21, $61
	and ($02), y                                                  ; $d013 : $31, $02
	.db $00                                                  ; $d015 : $00
	.db $ef                                                  ; $d016 : $ef
	bne br_02_d05c                                                  ; $d017 : $d0, $43

	.db $1c                                                  ; $d019 : $1c
	lda $29, x                                                  ; $d01a : $b5, $29
	ora ($00, x)                                                  ; $d01c : $01, $00
	.db $43                                                  ; $d01e : $43
	cmp ($50), y                                                  ; $d01f : $d1, $50
	jsr $3161                                                  ; $d021 : $20, $61, $31
	.db $02                                                  ; $d024 : $02
	php                                                  ; $d025 : $08
	.db $ab                                                  ; $d026 : $ab
	cmp ($09), y                                                  ; $d027 : $d1, $09
	.db $04                                                  ; $d029 : $04
	asl $0106, x                                                  ; $d02a : $1e, $06, $01
	php                                                  ; $d02d : $08
	asl $d1                                                  ; $d02e : $06, $d1

br_02_d030:
	.db $3a                                                  ; $d030 : $3a
	bpl br_02_cfd1                                                  ; $d031 : $10, $9e

	plp                                                  ; $d033 : $28
	ora ($00, x)                                                  ; $d034 : $01, $00
	.db $4b                                                  ; $d036 : $4b
	bne br_02_cfbd                                                  ; $d037 : $d0, $84

	.db $12                                                  ; $d039 : $12
	stx $0c                                                  ; $d03a : $86, $0c
	sty $62                                                  ; $d03c : $84, $62

br_02_d03e:
	bpl -$7a                                                  ; $d03e : $10, $86

	.db $12                                                  ; $d040 : $12
	sty $1c                                                  ; $d041 : $84, $1c

br_02_d043:
	.db $22                                                  ; $d043 : $22

br_02_d044:
	asl $2622, x                                                  ; $d044 : $1e, $22, $26

br_02_d047:
	clc                                                  ; $d047 : $18
	asl $1c04, x                                                  ; $d048 : $1e, $04, $1c
	.db $00                                                  ; $d04b : $00
	.db $e2                                                  ; $d04c : $e2
	cpx #$e2                                                  ; $d04d : $e0, $e2
	sta $211f, x                                                  ; $d04f : $9d, $1f, $21
	.db $a3                                                  ; $d052 : $a3
	and $f474                                                  ; $d053 : $2d, $74, $f4
	and ($35), y                                                  ; $d056 : $31, $35
	.db $37                                                  ; $d058 : $37
	.db $2b                                                  ; $d059 : $2b
	lda ($2d), y                                                  ; $d05a : $b1, $2d

br_02_d05c:
	.db $83                                                  ; $d05c : $83
	asl $14, x                                                  ; $d05d : $16, $14
	asl $86, x                                                  ; $d05f : $16, $86

br_02_d061:
	bpl br_02_cfe7                                                  ; $d061 : $10, $84

	.db $12                                                  ; $d063 : $12
	.db $14                                                  ; $d064 : $14
	stx $16                                                  ; $d065 : $86, $16
	sty $20                                                  ; $d067 : $84, $20
	sta ($28, x)                                                  ; $d069 : $81, $28
	.db $83                                                  ; $d06b : $83
	plp                                                  ; $d06c : $28
	sty $24                                                  ; $d06d : $84, $24
	plp                                                  ; $d06f : $28
	rol a                                                  ; $d070 : $2a
	asl $2486, x                                                  ; $d071 : $1e, $86, $24
	sty $20                                                  ; $d074 : $84, $20
	sty $12                                                  ; $d076 : $84, $12
	.db $14                                                  ; $d078 : $14
	.db $04                                                  ; $d079 : $04
	clc                                                  ; $d07a : $18
	.db $1a                                                  ; $d07b : $1a
	.db $1c                                                  ; $d07c : $1c
	.db $14                                                  ; $d07d : $14
	rol $22                                                  ; $d07e : $26, $22
	asl $181c, x                                                  ; $d080 : $1e, $1c, $18
	asl $0c22, x                                                  ; $d083 : $1e, $22, $0c
	.db $14                                                  ; $d086 : $14
	sta ($22, x)                                                  ; $d087 : $81, $22
	.db $83                                                  ; $d089 : $83
	.db $22                                                  ; $d08a : $22
	stx $24                                                  ; $d08b : $86, $24
	sta $18                                                  ; $d08d : $85, $18
	.db $82                                                  ; $d08f : $82
	asl $1e80, x                                                  ; $d090 : $1e, $80, $1e
	.db $83                                                  ; $d093 : $83
	.db $1c                                                  ; $d094 : $1c
	.db $83                                                  ; $d095 : $83
	clc                                                  ; $d096 : $18
	sty $1c                                                  ; $d097 : $84, $1c
	sta ($26, x)                                                  ; $d099 : $81, $26
	.db $83                                                  ; $d09b : $83
	rol $86                                                  ; $d09c : $26, $86
	rol $85                                                  ; $d09e : $26, $85
	asl $2482, x                                                  ; $d0a0 : $1e, $82, $24
	stx $22                                                  ; $d0a3 : $86, $22
	sty $1e                                                  ; $d0a5 : $84, $1e
	.db $00                                                  ; $d0a7 : $00
	.db $74                                                  ; $d0a8 : $74
	.db $f4                                                  ; $d0a9 : $f4
	lda $6b, x                                                  ; $d0aa : $b5, $6b
	bcs $30                                                  ; $d0ac : $b0, $30

	cpx $2dea                                                  ; $d0ae : $ec, $ea, $2d
	ror $f6, x                                                  ; $d0b1 : $76, $f6
	.db $b7                                                  ; $d0b3 : $b7
	adc $b5b0                                                  ; $d0b4 : $6d, $b0, $b5
	and ($81), y                                                  ; $d0b7 : $31, $81
	bpl br_02_d03e                                                  ; $d0b9 : $10, $83

	bpl br_02_d043                                                  ; $d0bb : $10, $86

	bpl br_02_d044                                                  ; $d0bd : $10, $85

	php                                                  ; $d0bf : $08
	.db $82                                                  ; $d0c0 : $82
	.db $0c                                                  ; $d0c1 : $0c
	.db $80                                                  ; $d0c2 : $80
	.db $0c                                                  ; $d0c3 : $0c
	.db $83                                                  ; $d0c4 : $83
	asl a                                                  ; $d0c5 : $0a
	php                                                  ; $d0c6 : $08
	sty $0a                                                  ; $d0c7 : $84, $0a
	sta ($12, x)                                                  ; $d0c9 : $81, $12
	.db $83                                                  ; $d0cb : $83
	.db $12                                                  ; $d0cc : $12
	stx $12                                                  ; $d0cd : $86, $12
	sta $0a                                                  ; $d0cf : $85, $0a
	.db $82                                                  ; $d0d1 : $82
	.db $0c                                                  ; $d0d2 : $0c
	stx $10                                                  ; $d0d3 : $86, $10
	sty $0c                                                  ; $d0d5 : $84, $0c
	sty $12                                                  ; $d0d7 : $84, $12
	.db $1c                                                  ; $d0d9 : $1c
	jsr $2a24                                                  ; $d0da : $20, $24, $2a
	rol $24                                                  ; $d0dd : $26, $24
	rol $22                                                  ; $d0df : $26, $22
	asl $2422, x                                                  ; $d0e1 : $1e, $22, $24
	asl $0c22, x                                                  ; $d0e4 : $1e, $22, $0c
	asl $1111, x                                                  ; $d0e7 : $1e, $11, $11
	bne -$30                                                  ; $d0ea : $d0, $d0

	bne br_02_d0ff                                                  ; $d0ec : $d0, $11

	.db $00                                                  ; $d0ee : $00
	.db $83                                                  ; $d0ef : $83
	bit $2c2a                                                  ; $d0f0 : $2c, $2a, $2c
	stx $26                                                  ; $d0f3 : $86, $26
	sty $28                                                  ; $d0f5 : $84, $28
	rol a                                                  ; $d0f7 : $2a
	stx $2c                                                  ; $d0f8 : $86, $2c
	sty $36                                                  ; $d0fa : $84, $36
	sta ($40, x)                                                  ; $d0fc : $81, $40
	.db $83                                                  ; $d0fe : $83

br_02_d0ff:
	rti                                                  ; $d0ff : $40


	sty $3a                                                  ; $d100 : $84, $3a
	rti                                                  ; $d102 : $40


	rol $34.w, x                                                  ; $d103 : $3e, $34, $00
	stx $3a                                                  ; $d106 : $86, $3a

br_02_d108:
	sty $36                                                  ; $d108 : $84, $36
	.db $00                                                  ; $d10a : $00
	ora $1995, x                                                  ; $d10b : $1d, $95, $19
	.db $1b                                                  ; $d10e : $1b
	sta $2d27, x                                                  ; $d10f : $9d, $27, $2d
	and #$2d                                                  ; $d112 : $29, $2d
	and ($23), y                                                  ; $d114 : $31, $23
	lda #$27                                                  ; $d116 : $a9, $27
	.db $83                                                  ; $d118 : $83
	jsr $201e                                                  ; $d119 : $20, $1e, $20
	stx $1a                                                  ; $d11c : $86, $1a
	sty $1c                                                  ; $d11e : $84, $1c
	asl $2086, x                                                  ; $d120 : $1e, $86, $20
	sty $2a                                                  ; $d123 : $84, $2a
	sta ($32, x)                                                  ; $d125 : $81, $32
	.db $83                                                  ; $d127 : $83
	.db $32                                                  ; $d128 : $32
	sty $2e                                                  ; $d129 : $84, $2e
	.db $32                                                  ; $d12b : $32
	.db $34                                                  ; $d12c : $34
	plp                                                  ; $d12d : $28
	stx $2e                                                  ; $d12e : $86, $2e
	sty $2a                                                  ; $d130 : $84, $2a
	sty $1c                                                  ; $d132 : $84, $1c
	asl $2204, x                                                  ; $d134 : $1e, $04, $22
	bit $26                                                  ; $d137 : $24, $26
	asl $2c30, x                                                  ; $d139 : $1e, $30, $2c
	plp                                                  ; $d13c : $28
	rol $22                                                  ; $d13d : $26, $22
	plp                                                  ; $d13f : $28
	bit $1e14                                                  ; $d140 : $2c, $14, $1e
	sta ($40, x)                                                  ; $d143 : $81, $40
	.db $83                                                  ; $d145 : $83
	rti                                                  ; $d146 : $40


	stx $40                                                  ; $d147 : $86, $40
	sta $34                                                  ; $d149 : $85, $34
	.db $82                                                  ; $d14b : $82
	.db $3a                                                  ; $d14c : $3a
	.db $80                                                  ; $d14d : $80
	.db $3a                                                  ; $d14e : $3a
	.db $83                                                  ; $d14f : $83
	rol $34, x                                                  ; $d150 : $36, $34
	sty $36                                                  ; $d152 : $84, $36
	sta ($3e, x)                                                  ; $d154 : $81, $3e
	.db $83                                                  ; $d156 : $83
	rol $3e86, x                                                  ; $d157 : $3e, $86, $3e
	sta $36                                                  ; $d15a : $85, $36
	.db $82                                                  ; $d15c : $82
	.db $3a                                                  ; $d15d : $3a
	stx $40                                                  ; $d15e : $86, $40
	sty $3a                                                  ; $d160 : $84, $3a
	.db $00                                                  ; $d162 : $00
	jmp ($afec)                                                  ; $d163 : $6c, $ec, $af


	.db $63                                                  ; $d166 : $63
	tay                                                  ; $d167 : $a8
	and #$c4                                                  ; $d168 : $29, $c4
	inc $e2                                                  ; $d16a : $e6, $e2
	.db $27                                                  ; $d16c : $27
	bvs -$10                                                  ; $d16d : $70, $f0

	lda ($69), y                                                  ; $d16f : $b1, $69
	ldx $29ad                                                  ; $d171 : $ae, $ad, $29
	sta ($1a, x)                                                  ; $d174 : $81, $1a
	.db $83                                                  ; $d176 : $83
	.db $1a                                                  ; $d177 : $1a

br_02_d178:
	stx $1a                                                  ; $d178 : $86, $1a
	sta $10                                                  ; $d17a : $85, $10
	.db $82                                                  ; $d17c : $82
	asl $80, x                                                  ; $d17d : $16, $80
	asl $83, x                                                  ; $d17f : $16, $83
	.db $12                                                  ; $d181 : $12
	bpl br_02_d108                                                  ; $d182 : $10, $84

	.db $12                                                  ; $d184 : $12
	sta ($1c, x)                                                  ; $d185 : $81, $1c
	.db $83                                                  ; $d187 : $83
	.db $1c                                                  ; $d188 : $1c
	stx $1c                                                  ; $d189 : $86, $1c
	sta $12                                                  ; $d18b : $85, $12
	.db $82                                                  ; $d18d : $82
	asl $86, x                                                  ; $d18e : $16, $86
	.db $1a                                                  ; $d190 : $1a
	sty $16                                                  ; $d191 : $84, $16
	sty $1c                                                  ; $d193 : $84, $1c
	rol $2a                                                  ; $d195 : $26, $2a
	rol $3034                                                  ; $d197 : $2e, $34, $30
	rol $2c30                                                  ; $d19a : $2e, $30, $2c

br_02_d19d:
	plp                                                  ; $d19d : $28
	bit $282e                                                  ; $d19e : $2c, $2e, $28
	bit $2814                                                  ; $d1a1 : $2c, $14, $28
	ora ($11), y                                                  ; $d1a4 : $11, $11
	bne br_02_d178                                                  ; $d1a6 : $d0, $d0

	bne $11                                                  ; $d1a8 : $d0, $11

	.db $00                                                  ; $d1aa : $00
	.db $87                                                  ; $d1ab : $87
	.db $3a                                                  ; $d1ac : $3a
	rol $00, x                                                  ; $d1ad : $36, $00
	sbc #$e7                                                  ; $d1af : $e9, $e7
	.db $87                                                  ; $d1b1 : $87
	rol $832a                                                  ; $d1b2 : $2e, $2a, $83
	asl $1c, x                                                  ; $d1b5 : $16, $1c
	.db $22                                                  ; $d1b7 : $22
	plp                                                  ; $d1b8 : $28
	rol $8434                                                  ; $d1b9 : $2e, $34, $84
	.db $3a                                                  ; $d1bc : $3a
	.db $83                                                  ; $d1bd : $83
	.db $34                                                  ; $d1be : $34
	.db $22                                                  ; $d1bf : $22
	.db $34                                                  ; $d1c0 : $34
	sty $36                                                  ; $d1c1 : $84, $36
	.db $83                                                  ; $d1c3 : $83
	asl $1e1e, x                                                  ; $d1c4 : $1e, $1e, $1e
	stx $1e                                                  ; $d1c7 : $86, $1e
	ora ($11), y                                                  ; $d1c9 : $11, $11
	bne br_02_d19d                                                  ; $d1cb : $d0, $d0

	bne $11                                                  ; $d1cd : $d0, $11

	.db $00                                                  ; $d1cf : $00

Call_02_d1d0:
	bpl br_02_d1fe                                                  ; $d1d0 : $10, $2c

	rol $2927                                                  ; $d1d2 : $2e, $27, $29
	.db $2b                                                  ; $d1d5 : $2b
	rol a                                                  ; $d1d6 : $2a
	plp                                                  ; $d1d7 : $28
	and $29                                                  ; $d1d8 : $25, $29
	.db $2f                                                  ; $d1da : $2f
	and $2a2c                                                  ; $d1db : $2d, $2c, $2a
	.db $22                                                  ; $d1de : $22
	bit $34                                                  ; $d1df : $24, $34
	.db $3f                                                  ; $d1e1 : $3f
	and ($2d), y                                                  ; $d1e2 : $31, $2d
	.db $3a                                                  ; $d1e4 : $3a
	.db $3b                                                  ; $d1e5 : $3b
	.db $27                                                  ; $d1e6 : $27
	.db $12                                                  ; $d1e7 : $12
	asl a                                                  ; $d1e8 : $0a
	.db $1f                                                  ; $d1e9 : $1f
	bit $2327                                                  ; $d1ea : $2c, $27, $23
	plp                                                  ; $d1ed : $28
	.db $22                                                  ; $d1ee : $22
	asl $04a0, x                                                  ; $d1ef : $1e, $a0, $04
	clc                                                  ; $d1f2 : $18
	rts                                                  ; $d1f3 : $60


	sty $02, x                                                  ; $d1f4 : $94, $02
	.db $44                                                  ; $d1f6 : $44
	bmi $0a                                                  ; $d1f7 : $30, $0a

	bvc -$60                                                  ; $d1f9 : $50, $a0

	.db $02                                                  ; $d1fb : $02
	rol $35, x                                                  ; $d1fc : $36, $35

br_02_d1fe:
	.db $80                                                  ; $d1fe : $80
	.db $34                                                  ; $d1ff : $34
	ora ($44, x)                                                  ; $d200 : $01, $44
	ora ($58, x)                                                  ; $d202 : $01, $58
	ora ($99, x)                                                  ; $d204 : $01, $99
	.db $02                                                  ; $d206 : $02
	.db $22                                                  ; $d207 : $22
	.db $02                                                  ; $d208 : $02
	.db $42                                                  ; $d209 : $42
	.db $02                                                  ; $d20a : $02
	adc $02                                                  ; $d20b : $65, $02
	bcs $02                                                  ; $d20d : $b0, $02

	cmp $0403, y                                                  ; $d20f : $d9, $03, $04
	.db $03                                                  ; $d212 : $03
	.db $32                                                  ; $d213 : $32
	.db $03                                                  ; $d214 : $03
	.db $63                                                  ; $d215 : $63
	.db $03                                                  ; $d216 : $03
	stx $03, y                                                  ; $d217 : $96, $03
	cmp $0704                                                  ; $d219 : $cd, $04, $07
	.db $04                                                  ; $d21c : $04
	.db $44                                                  ; $d21d : $44
	.db $04                                                  ; $d21e : $04
	sta $04                                                  ; $d21f : $85, $04
	dex                                                  ; $d221 : $ca
	ora $13                                                  ; $d222 : $05, $13
	ora $60                                                  ; $d224 : $05, $60
	ora $b2                                                  ; $d226 : $05, $b2
	asl $08                                                  ; $d228 : $06, $08
	asl $64                                                  ; $d22a : $06, $64

br_02_d22c:
	asl $c6                                                  ; $d22c : $06, $c6
	.db $07                                                  ; $d22e : $07
	and $9a07                                                  ; $d22f : $2d, $07, $9a
	php                                                  ; $d232 : $08
	asl $8808                                                  ; $d233 : $0e, $08, $88
	ora #$95                                                  ; $d236 : $09, $95
	asl a                                                  ; $d238 : $0a
	rol $00                                                  ; $d239 : $26, $00
	.db $00                                                  ; $d23b : $00
	.db $97                                                  ; $d23c : $97
	tya                                                  ; $d23d : $98
	txs                                                  ; $d23e : $9a
	.db $9b                                                  ; $d23f : $9b
	.db $9b                                                  ; $d240 : $9b
	txs                                                  ; $d241 : $9a
	txs                                                  ; $d242 : $9a
	sta $9899, y                                                  ; $d243 : $99, $99, $98
	tya                                                  ; $d246 : $98
	.db $97                                                  ; $d247 : $97
	.db $97                                                  ; $d248 : $97
	stx $96, y                                                  ; $d249 : $96, $96
	sta $02, x                                                  ; $d24b : $95, $02
	asl a                                                  ; $d24d : $0a
	.db $5f                                                  ; $d24e : $5f
	.db $d2                                                  ; $d24f : $d2
	.db $44                                                  ; $d250 : $44
	.db $f4                                                  ; $d251 : $f4
	cmp ($7f), y                                                  ; $d252 : $d1, $7f
	.db $d2                                                  ; $d254 : $d2
	jsr Call_02_d1d0                                                  ; $d255 : $20, $d0, $d1
	rts                                                  ; $d258 : $60


	beq br_02_d22c                                                  ; $d259 : $f0, $d1

	.db $89                                                  ; $d25b : $89
	.db $d2                                                  ; $d25c : $d2
	.db $00                                                  ; $d25d : $00
	.db $00                                                  ; $d25e : $00
	ora ($02, x)                                                  ; $d25f : $01, $02
	.db $03                                                  ; $d261 : $03
	.db $04                                                  ; $d262 : $04
	asl $07                                                  ; $d263 : $06, $07
	ora #$0b                                                  ; $d265 : $09, $0b
	asl $1310                                                  ; $d267 : $0e, $10, $13
	clc                                                  ; $d26a : $18
	jsr $342b                                                  ; $d26b : $20, $2b, $34
	.db $3c                                                  ; $d26e : $3c
	.db $3f                                                  ; $d26f : $3f
	.db $3f                                                  ; $d270 : $3f
	rol $3a3d, x                                                  ; $d271 : $3e, $3d, $3a
	rol $32, x                                                  ; $d274 : $36, $32
	.db $2f                                                  ; $d276 : $2f
	bit $2629                                                  ; $d277 : $2c, $29, $26
	bit $21                                                  ; $d27a : $24, $21
	asl $1918, x                                                  ; $d27c : $1e, $18, $19
	.db $80                                                  ; $d27f : $80
	.db $1b                                                  ; $d280 : $1b
	sta ($0a, x)                                                  ; $d281 : $81, $0a
	.db $00                                                  ; $d283 : $00
	.db $04                                                  ; $d284 : $04
	.db $82                                                  ; $d285 : $82
	bpl br_02_d288                                                  ; $d286 : $10, $00

br_02_d288:
	rts                                                  ; $d288 : $60


	.db $80                                                  ; $d289 : $80
	.db $02                                                  ; $d28a : $02
	.db $80                                                  ; $d28b : $80
	.db $00                                                  ; $d28c : $00
	.db $00                                                  ; $d28d : $00
	rts                                                  ; $d28e : $60


	bit $12                                                  ; $d28f : $24, $12
	ora $1b09                                                  ; $d291 : $0d, $09, $1b
	plp                                                  ; $d294 : $28
	rol $12, x                                                  ; $d295 : $36, $12
	bit $12                                                  ; $d297 : $24, $12
	ora $1b09                                                  ; $d299 : $0d, $09, $1b
	plp                                                  ; $d29c : $28
	rol $6c, x                                                  ; $d29d : $36, $6c