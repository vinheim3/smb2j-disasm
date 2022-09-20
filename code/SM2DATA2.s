.include "includes.s"
        
.bank $001 slot 2
.org $0

	lda #$01                                                  ; $c470 : $a9, $01
	pha                                                  ; $c472 : $48
	bne br_01_c478                                                  ; $c473 : $d0, $03

	lda #$04                                                  ; $c475 : $a9, $04
	pha                                                  ; $c477 : $48

br_01_c478:
	jsr $7761                                                  ; $c478 : $20, $61, $77
	pla                                                  ; $c47b : $68
	sta $07                                                  ; $c47c : $85, $07
	tya                                                  ; $c47e : $98
	pha                                                  ; $c47f : $48
	ldy $0730, x                                                  ; $c480 : $bc, $30, $07
	beq br_01_c4a8                                                  ; $c483 : $f0, $23

	jsr $7791                                                  ; $c485 : $20, $91, $77
	bcs br_01_c4a8                                                  ; $c488 : $b0, $1e

	lda #$04                                                  ; $c48a : $a9, $04
	jsr $7772                                                  ; $c48c : $20, $72, $77
	lda $06                                                  ; $c48f : $a5, $06
	asl a                                                  ; $c491 : $0a
	asl a                                                  ; $c492 : $0a
	asl a                                                  ; $c493 : $0a
	asl a                                                  ; $c494 : $0a
	clc                                                  ; $c495 : $18
	adc $cf, x                                                  ; $c496 : $75, $cf
	sec                                                  ; $c498 : $38
	sbc #$0a                                                  ; $c499 : $e9, $0a
	sta $cf, x                                                  ; $c49b : $95, $cf
	sta $0434, x                                                  ; $c49d : $9d, $34, $04
	clc                                                  ; $c4a0 : $18
	adc #$18                                                  ; $c4a1 : $69, $18
	sta $0417, x                                                  ; $c4a3 : $9d, $17, $04
	inc $a0, x                                                  ; $c4a6 : $f6, $a0

br_01_c4a8:
	pla                                                  ; $c4a8 : $68
	tay                                                  ; $c4a9 : $a8
	pha                                                  ; $c4aa : $48
	ldx $07                                                  ; $c4ab : $a6, $07
	lda $772b, y                                                  ; $c4ad : $b9, $2b, $77
	ldy $06                                                  ; $c4b0 : $a4, $06
	dey                                                  ; $c4b2 : $88
	jsr $79c6                                                  ; $c4b3 : $20, $c6, $79
	pla                                                  ; $c4b6 : $68
	tay                                                  ; $c4b7 : $a8
	lda $7729, y                                                  ; $c4b8 : $b9, $29, $77
	sta $06a1, x                                                  ; $c4bb : $9d, $a1, $06
	rts                                                  ; $c4be : $60


	rts                                                  ; $c4bf : $60


	lda $1e, x                                                  ; $c4c0 : $b5, $1e
	bne br_01_c4fd                                                  ; $c4c2 : $d0, $39

	lda $078a, x                                                  ; $c4c4 : $bd, $8a, $07
	bne br_01_c4fd                                                  ; $c4c7 : $d0, $34

br_01_c4c9:
	lda $a0, x                                                  ; $c4c9 : $b5, $a0
	bne br_01_c4d8                                                  ; $c4cb : $d0, $0b

	lda $58, x                                                  ; $c4cd : $b5, $58
	eor #$ff                                                  ; $c4cf : $49, $ff
	clc                                                  ; $c4d1 : $18
	adc #$01                                                  ; $c4d2 : $69, $01
	sta $58, x                                                  ; $c4d4 : $95, $58
	inc $a0, x                                                  ; $c4d6 : $f6, $a0

br_01_c4d8:
	lda $0417, x                                                  ; $c4d8 : $bd, $17, $04
	ldy $58, x                                                  ; $c4db : $b4, $58
	bpl br_01_c4e2                                                  ; $c4dd : $10, $03

	lda $0434, x                                                  ; $c4df : $bd, $34, $04

br_01_c4e2:
	sta $00                                                  ; $c4e2 : $85, $00
	lda $0747                                                  ; $c4e4 : $ad, $47, $07
	bne br_01_c4fd                                                  ; $c4e7 : $d0, $14

	lda $cf, x                                                  ; $c4e9 : $b5, $cf
	clc                                                  ; $c4eb : $18
	adc $58, x                                                  ; $c4ec : $75, $58
	sta $cf, x                                                  ; $c4ee : $95, $cf
	cmp $00                                                  ; $c4f0 : $c5, $00
	bne br_01_c4fd                                                  ; $c4f2 : $d0, $09

	lda #$00                                                  ; $c4f4 : $a9, $00
	sta $a0, x                                                  ; $c4f6 : $95, $a0
	lda #$20                                                  ; $c4f8 : $a9, $20
	sta $078a, x                                                  ; $c4fa : $9d, $8a, $07

br_01_c4fd:
	rts                                                  ; $c4fd : $60


	lda $07f9                                                  ; $c4fe : $ad, $f9, $07
	beq br_01_c52b                                                  ; $c501 : $f0, $28

	lda $074e                                                  ; $c503 : $ad, $4e, $07
	cmp #$01                                                  ; $c506 : $c9, $01
	bne br_01_c52b                                                  ; $c508 : $d0, $21

	ldy #$01                                                  ; $c50a : $a0, $01
	lda $09                                                  ; $c50c : $a5, $09
	asl a                                                  ; $c50e : $0a
	bcs br_01_c513                                                  ; $c50f : $b0, $02

	ldy #$03                                                  ; $c511 : $a0, $03

br_01_c513:
	sty $00                                                  ; $c513 : $84, $00
	lda $09                                                  ; $c515 : $a5, $09
	and $00                                                  ; $c517 : $25, $00
	bne br_01_c52b                                                  ; $c519 : $d0, $10

	lda $86                                                  ; $c51b : $a5, $86
	clc                                                  ; $c51d : $18
	adc #$01                                                  ; $c51e : $69, $01
	sta $86                                                  ; $c520 : $85, $86
	lda $6d                                                  ; $c522 : $a5, $6d
	adc #$00                                                  ; $c524 : $69, $00
	sta $6d                                                  ; $c526 : $85, $6d
	inc $06ff                                                  ; $c528 : $ee, $ff, $06

br_01_c52b:
	rts                                                  ; $c52b : $60


	bmi $70                                                  ; $c52c : $30, $70

	clv                                                  ; $c52e : $b8
	bvc br_01_c4c9                                                  ; $c52f : $50, $98

	bmi br_01_c5a3                                                  ; $c531 : $30, $70

	clv                                                  ; $c533 : $b8
	bvc -$68                                                  ; $c534 : $50, $98

	bmi $70                                                  ; $c536 : $30, $70

	bmi br_01_c56a                                                  ; $c538 : $30, $30

	bmi br_01_c59c                                                  ; $c53a : $30, $60

	rts                                                  ; $c53c : $60


	ldy #$a0                                                  ; $c53d : $a0, $a0
	ldy #$d0                                                  ; $c53f : $a0, $d0
	bne br_01_c513                                                  ; $c541 : $d0, $d0

	rts                                                  ; $c543 : $60


	.db $7b                                                  ; $c544 : $7b
	.db $7b                                                  ; $c545 : $7b
	.db $7b                                                  ; $c546 : $7b
	.db $7b                                                  ; $c547 : $7b
	.db $7a                                                  ; $c548 : $7a
	.db $7a                                                  ; $c549 : $7a
	.db $7b                                                  ; $c54a : $7b
	.db $7b                                                  ; $c54b : $7b
	.db $7b                                                  ; $c54c : $7b
	.db $7a                                                  ; $c54d : $7a
	.db $7b                                                  ; $c54e : $7b
	.db $7a                                                  ; $c54f : $7a
	lda $07f9                                                  ; $c550 : $ad, $f9, $07
	beq br_01_c588                                                  ; $c553 : $f0, $33

	lda #$04                                                  ; $c555 : $a9, $04
	sta $fd                                                  ; $c557 : $85, $fd
	jsr Call_01_c5a1                                                  ; $c559 : $20, $a1, $c5
	ldx #$00                                                  ; $c55c : $a2, $00
	ldy $06eb                                                  ; $c55e : $ac, $eb, $06

br_01_c561:
	lda $c52c, x                                                  ; $c561 : $bd, $2c, $c5
	sta $0200, y                                                  ; $c564 : $99, $00, $02
	lda $c544, x                                                  ; $c567 : $bd, $44, $c5

br_01_c56a:
	sta $0201, y                                                  ; $c56a : $99, $01, $02
	lda #$41                                                  ; $c56d : $a9, $41
	sta $0202, y                                                  ; $c56f : $99, $02, $02
	lda $c538, x                                                  ; $c572 : $bd, $38, $c5
	sta $0203, y                                                  ; $c575 : $99, $03, $02
	iny                                                  ; $c578 : $c8
	iny                                                  ; $c579 : $c8
	iny                                                  ; $c57a : $c8
	iny                                                  ; $c57b : $c8
	inx                                                  ; $c57c : $e8
	cpx #$06                                                  ; $c57d : $e0, $06
	bne br_01_c584                                                  ; $c57f : $d0, $03

	ldy $06ec                                                  ; $c581 : $ac, $ec, $06

br_01_c584:
	cpx #$0c                                                  ; $c584 : $e0, $0c
	bne br_01_c561                                                  ; $c586 : $d0, $d9

br_01_c588:
	rts                                                  ; $c588 : $60


	.db $57                                                  ; $c589 : $57
	.db $57                                                  ; $c58a : $57
	lsr $56, x                                                  ; $c58b : $56, $56
	cli                                                  ; $c58d : $58
	cli                                                  ; $c58e : $58
	lsr $56, x                                                  ; $c58f : $56, $56
	.db $57                                                  ; $c591 : $57
	cli                                                  ; $c592 : $58
	.db $57                                                  ; $c593 : $57
	cli                                                  ; $c594 : $58
	eor $5859, y                                                  ; $c595 : $59, $59, $58
	cli                                                  ; $c598 : $58
	.db $5a                                                  ; $c599 : $5a
	.db $5a                                                  ; $c59a : $5a
	cli                                                  ; $c59b : $58

br_01_c59c:
	cli                                                  ; $c59c : $58
	eor $595a, y                                                  ; $c59d : $59, $5a, $59
	.db $5a                                                  ; $c5a0 : $5a

Call_01_c5a1:
	ldx #$0b                                                  ; $c5a1 : $a2, $0b

br_01_c5a3:
	lda $c538, x                                                  ; $c5a3 : $bd, $38, $c5
	clc                                                  ; $c5a6 : $18
	adc $c589, x                                                  ; $c5a7 : $7d, $89, $c5
	adc $c589, x                                                  ; $c5aa : $7d, $89, $c5
	sta $c538, x                                                  ; $c5ad : $9d, $38, $c5
	lda $c52c, x                                                  ; $c5b0 : $bd, $2c, $c5
	clc                                                  ; $c5b3 : $18
	adc $c589, x                                                  ; $c5b4 : $7d, $89, $c5
	sta $c52c, x                                                  ; $c5b7 : $9d, $2c, $c5
	dex                                                  ; $c5ba : $ca
	bpl br_01_c5a3                                                  ; $c5bb : $10, $e6

br_01_c5bd:
	rts                                                  ; $c5bd : $60


	lda #$01                                                  ; $c5be : $a9, $01
	bne br_01_c5c4                                                  ; $c5c0 : $d0, $02

	lda #$00                                                  ; $c5c2 : $a9, $00

br_01_c5c4:
	sta $07f9                                                  ; $c5c4 : $8d, $f9, $07
	rts                                                  ; $c5c7 : $60


	.db $ff                                                  ; $c5c8 : $ff
	.db $ff                                                  ; $c5c9 : $ff
	.db $ff                                                  ; $c5ca : $ff
	.db $ff                                                  ; $c5cb : $ff
	.db $ff                                                  ; $c5cc : $ff
	.db $ff                                                  ; $c5cd : $ff
	.db $ff                                                  ; $c5ce : $ff
	.db $ff                                                  ; $c5cf : $ff
	rol a                                                  ; $c5d0 : $2a
	lda #$6b                                                  ; $c5d1 : $a9, $6b
	.db $0c                                                  ; $c5d3 : $0c
	.db $cb                                                  ; $c5d4 : $cb
	.db $0c                                                  ; $c5d5 : $0c
	ora $9c, x                                                  ; $c5d6 : $15, $9c
	.db $89                                                  ; $c5d8 : $89
	.db $1c                                                  ; $c5d9 : $1c
	cpy $091d                                                  ; $c5da : $cc, $1d, $09
	sta $1cf5, x                                                  ; $c5dd : $9d, $f5, $1c
	.db $6b                                                  ; $c5e0 : $6b
	lda #$ab                                                  ; $c5e1 : $a9, $ab
	.db $0c                                                  ; $c5e3 : $0c
	.db $db                                                  ; $c5e4 : $db
	and #$48                                                  ; $c5e5 : $29, $48
	sta $0c9b, x                                                  ; $c5e7 : $9d, $9b, $0c
	.db $5b                                                  ; $c5ea : $5b
	sty $1ca5                                                  ; $c5eb : $8c, $a5, $1c
	eor #$9d                                                  ; $c5ee : $49, $9d
	adc $091d, y                                                  ; $c5f0 : $79, $1d, $09
	sta $0c6b, x                                                  ; $c5f3 : $9d, $6b, $0c
	cmp #$1f                                                  ; $c5f6 : $c9, $1f
	.db $3b                                                  ; $c5f8 : $3b
	sty $9588                                                  ; $c5f9 : $8c, $88, $95
	lda $191c, y                                                  ; $c5fc : $b9, $1c, $19
	sta $cc30, x                                                  ; $c5ff : $9d, $30, $cc
	sei                                                  ; $c602 : $78
	and $28a6                                                  ; $c603 : $2d, $a6, $28
	bcc br_01_c5bd                                                  ; $c606 : $90, $b5

	.db $ff                                                  ; $c608 : $ff
	.db $0f                                                  ; $c609 : $0f
	.db $02                                                  ; $c60a : $02
	ora #$1f                                                  ; $c60b : $09, $1f
	.db $8b                                                  ; $c60d : $8b
	sta $2b                                                  ; $c60e : $85, $2b
	sty $1be9                                                  ; $c610 : $8c, $e9, $1b
	and $9d                                                  ; $c613 : $25, $9d
	.db $0f                                                  ; $c615 : $0f
	.db $07                                                  ; $c616 : $07
	ora #$1d                                                  ; $c617 : $09, $1d
	adc $9928                                                  ; $c619 : $6d, $28, $99
	.db $1b                                                  ; $c61c : $1b
	lda $2c, x                                                  ; $c61d : $b5, $2c
	.db $4b                                                  ; $c61f : $4b
	sty $9f09                                                  ; $c620 : $8c, $09, $9f
	.db $fb                                                  ; $c623 : $fb
	ora $9d, x                                                  ; $c624 : $15, $9d
	tay                                                  ; $c626 : $a8
	.db $0f                                                  ; $c627 : $0f
	.db $0c                                                  ; $c628 : $0c
	.db $2b                                                  ; $c629 : $2b
	.db $0c                                                  ; $c62a : $0c
	sei                                                  ; $c62b : $78
	and $b590                                                  ; $c62c : $2d, $90, $b5
	.db $ff                                                  ; $c62f : $ff
	ora $9d                                                  ; $c630 : $05, $9d
	ora $dda8                                                  ; $c632 : $0d, $a8, $dd

br_01_c635:
	ora $ac07, x                                                  ; $c635 : $1d, $07, $ac
	.db $54                                                  ; $c638 : $54
	bit $2ca2                                                  ; $c639 : $2c, $a2, $2c
	.db $f4                                                  ; $c63c : $f4
	bit $ac42                                                  ; $c63d : $2c, $42, $ac
	rol $9d                                                  ; $c640 : $26, $9d
	.db $d4                                                  ; $c642 : $d4
	.db $03                                                  ; $c643 : $03
	bit $83                                                  ; $c644 : $24, $83
	.db $64                                                  ; $c646 : $64
	.db $03                                                  ; $c647 : $03
	.db $2b                                                  ; $c648 : $2b
	.db $82                                                  ; $c649 : $82

br_01_c64a:
	.db $4b                                                  ; $c64a : $4b
	.db $02                                                  ; $c64b : $02
	.db $7b                                                  ; $c64c : $7b
	.db $02                                                  ; $c64d : $02
	.db $9b                                                  ; $c64e : $9b
	.db $02                                                  ; $c64f : $02
	.db $5b                                                  ; $c650 : $5b
	.db $82                                                  ; $c651 : $82
	.db $7b                                                  ; $c652 : $7b
	.db $02                                                  ; $c653 : $02
	.db $0b                                                  ; $c654 : $0b
	.db $82                                                  ; $c655 : $82
	.db $2b                                                  ; $c656 : $2b
	.db $02                                                  ; $c657 : $02
	dec $1b                                                  ; $c658 : $c6, $1b
	plp                                                  ; $c65a : $28
	.db $82                                                  ; $c65b : $82
	pha                                                  ; $c65c : $48
	.db $02                                                  ; $c65d : $02
	ldx $1b                                                  ; $c65e : $a6, $1b
	.db $7b                                                  ; $c660 : $7b
	sta $85, x                                                  ; $c661 : $95, $85
	.db $0c                                                  ; $c663 : $0c
	sta $0f9b, x                                                  ; $c664 : $9d, $9b, $0f
	asl $2d78                                                  ; $c667 : $0e, $78, $2d
	.db $7a                                                  ; $c66a : $7a
	ora $b590, x                                                  ; $c66b : $1d, $90, $b5
	.db $ff                                                  ; $c66e : $ff
	ora $999b, y                                                  ; $c66f : $19, $9b, $99
	.db $1b                                                  ; $c672 : $1b
	bit $598c                                                  ; $c673 : $2c, $8c, $59
	.db $1b                                                  ; $c676 : $1b
	cmp $0f                                                  ; $c677 : $c5, $0f
	asl $e083                                                  ; $c679 : $0e, $83, $e0
	.db $0f                                                  ; $c67c : $0f
	asl $2e                                                  ; $c67d : $06, $2e
	.db $67                                                  ; $c67f : $67
	.db $e7                                                  ; $c680 : $e7
	.db $0f                                                  ; $c681 : $0f
	php                                                  ; $c682 : $08

br_01_c683:
	.db $9b                                                  ; $c683 : $9b
	.db $07                                                  ; $c684 : $07
	asl $e083                                                  ; $c685 : $0e, $83, $e0
	and $870e, y                                                  ; $c688 : $39, $0e, $87
	bpl br_01_c64a                                                  ; $c68b : $10, $bd

	plp                                                  ; $c68d : $28
	eor $0f9f, y                                                  ; $c68e : $59, $9f, $0f
	.db $0f                                                  ; $c691 : $0f
	.db $34                                                  ; $c692 : $34
	.db $0f                                                  ; $c693 : $0f
	.db $77                                                  ; $c694 : $77
	bpl br_01_c635                                                  ; $c695 : $10, $9e

	.db $67                                                  ; $c697 : $67
	sbc ($0f), y                                                  ; $c698 : $f1, $0f
	.db $12                                                  ; $c69a : $12
	asl $e367                                                  ; $c69b : $0e, $67, $e3
	sei                                                  ; $c69e : $78
	and $150f                                                  ; $c69f : $2d, $0f, $15
	.db $3b                                                  ; $c6a2 : $3b
	and #$57                                                  ; $c6a3 : $29, $57
	.db $82                                                  ; $c6a5 : $82
	.db $0f                                                  ; $c6a6 : $0f
	clc                                                  ; $c6a7 : $18
	eor $1d, x                                                  ; $c6a8 : $55, $1d
	sei                                                  ; $c6aa : $78
	and $b590                                                  ; $c6ab : $2d, $90, $b5
	.db $ff                                                  ; $c6ae : $ff
	.db $1b                                                  ; $c6af : $1b
	.db $82                                                  ; $c6b0 : $82
	.db $4b                                                  ; $c6b1 : $4b
	.db $02                                                  ; $c6b2 : $02
	.db $7b                                                  ; $c6b3 : $7b
	.db $02                                                  ; $c6b4 : $02
	.db $ab                                                  ; $c6b5 : $ab
	.db $02                                                  ; $c6b6 : $02
	.db $0f                                                  ; $c6b7 : $0f
	.db $03                                                  ; $c6b8 : $03
	sbc $d00e, y                                                  ; $c6b9 : $f9, $0e, $d0
	ldx $c48e, y                                                  ; $c6bc : $be, $8e, $c4
	stx $f8                                                  ; $c6bf : $86, $f8
	asl $bac0                                                  ; $c6c1 : $0e, $c0, $ba
	.db $0f                                                  ; $c6c4 : $0f
	ora $0e3a                                                  ; $c6c5 : $0d, $3a, $0e
	.db $bb                                                  ; $c6c8 : $bb
	.db $02                                                  ; $c6c9 : $02
	bmi br_01_c683                                                  ; $c6ca : $30, $b7

	.db $80                                                  ; $c6cc : $80
	ldy $bcc0, x                                                  ; $c6cd : $bc, $c0, $bc
	.db $0f                                                  ; $c6d0 : $0f
	.db $12                                                  ; $c6d1 : $12
	bit $0f                                                  ; $c6d2 : $24, $0f
	.db $54                                                  ; $c6d4 : $54
	.db $0f                                                  ; $c6d5 : $0f
	dec $803c                                                  ; $c6d6 : $ce, $3c, $80
	.db $d3                                                  ; $c6d9 : $d3
	.db $0f                                                  ; $c6da : $0f
	.db $cb                                                  ; $c6db : $cb
	stx $0ef9                                                  ; $c6dc : $8e, $f9, $0e
	.db $ff                                                  ; $c6df : $ff
	asl a                                                  ; $c6e0 : $0a
	tax                                                  ; $c6e1 : $aa
	ora $8f, x                                                  ; $c6e2 : $15, $8f
	.db $44                                                  ; $c6e4 : $44
	.db $0f                                                  ; $c6e5 : $0f
	lsr $8044                                                  ; $c6e6 : $4e, $44, $80
	cld                                                  ; $c6e9 : $d8
	.db $07                                                  ; $c6ea : $07
	.db $57                                                  ; $c6eb : $57
	bcc br_01_c6fd                                                  ; $c6ec : $90, $0f

	asl $67                                                  ; $c6ee : $06, $67
	bit $8b                                                  ; $c6f0 : $24, $8b
	.db $17                                                  ; $c6f2 : $17
	lda $ab24, y                                                  ; $c6f3 : $b9, $24, $ab
	.db $97                                                  ; $c6f6 : $97
	asl $87, x                                                  ; $c6f7 : $16, $87
	rol a                                                  ; $c6f9 : $2a
	plp                                                  ; $c6fa : $28
	sty $0f                                                  ; $c6fb : $84, $0f

br_01_c6fd:
	.db $57                                                  ; $c6fd : $57
	lda #$a5                                                  ; $c6fe : $a9, $a5
	and #$f5                                                  ; $c700 : $29, $f5
	and #$a7                                                  ; $c702 : $29, $a7
	ldy $0a                                                  ; $c704 : $a4, $0a
	ldy $ff                                                  ; $c706 : $a4, $ff
	.db $07                                                  ; $c708 : $07
	.db $82                                                  ; $c709 : $82
	.db $67                                                  ; $c70a : $67
	asl $bd40                                                  ; $c70b : $0e, $40, $bd
	cpx #$38                                                  ; $c70e : $e0, $38
	bne -$44                                                  ; $c710 : $d0, $bc

	ror $a084                                                  ; $c712 : $6e, $84, $a0
	.db $9b                                                  ; $c715 : $9b
	ora $0f                                                  ; $c716 : $05, $0f
	asl $bb                                                  ; $c718 : $06, $bb
	ora $0f                                                  ; $c71a : $05, $0f
	php                                                  ; $c71c : $08
	.db $0b                                                  ; $c71d : $0b
	asl $0e4b                                                  ; $c71e : $0e, $4b, $0e
	.db $0f                                                  ; $c721 : $0f
	asl a                                                  ; $c722 : $0a
	ora $29                                                  ; $c723 : $05, $29
	sta $29                                                  ; $c725 : $85, $29
	.db $0f                                                  ; $c727 : $0f
	.db $0c                                                  ; $c728 : $0c
	cmp $ff28, x                                                  ; $c729 : $dd, $28, $ff
	.db $0f                                                  ; $c72c : $0f
	.db $02                                                  ; $c72d : $02
	plp                                                  ; $c72e : $28
	bpl -$1a                                                  ; $c72f : $10, $e6

	.db $03                                                  ; $c731 : $03
	cld                                                  ; $c732 : $d8
	bcc br_01_c744                                                  ; $c733 : $90, $0f

	ora $85                                                  ; $c735 : $05, $85
	.db $0f                                                  ; $c737 : $0f
	sei                                                  ; $c738 : $78
	.db $83                                                  ; $c739 : $83
	iny                                                  ; $c73a : $c8
	bpl br_01_c755                                                  ; $c73b : $10, $18

Call_01_c73d:
	.db $83                                                  ; $c73d : $83
	cli                                                  ; $c73e : $58
	.db $83                                                  ; $c73f : $83
	.db $f7                                                  ; $c740 : $f7
	bcc br_01_c752                                                  ; $c741 : $90, $0f

	.db $0c                                                  ; $c743 : $0c

br_01_c744:
	.db $43                                                  ; $c744 : $43
	.db $0f                                                  ; $c745 : $0f
	.db $73                                                  ; $c746 : $73
	.db $8f                                                  ; $c747 : $8f
	.db $ff                                                  ; $c748 : $ff
	.db $a7                                                  ; $c749 : $a7
	.db $83                                                  ; $c74a : $83
	.db $d7                                                  ; $c74b : $d7
	.db $03                                                  ; $c74c : $03
	.db $0f                                                  ; $c74d : $0f
	.db $03                                                  ; $c74e : $03
	.db $6b                                                  ; $c74f : $6b
	.db $00                                                  ; $c750 : $00
	.db $0f                                                  ; $c751 : $0f

br_01_c752:
	asl $e3                                                  ; $c752 : $06, $e3
	.db $0f                                                  ; $c754 : $0f

br_01_c755:
	.db $14                                                  ; $c755 : $14
	.db $8f                                                  ; $c756 : $8f
	rol $c344, x                                                  ; $c757 : $3e, $44, $c3
	.db $0b                                                  ; $c75a : $0b
	.db $80                                                  ; $c75b : $80
	.db $87                                                  ; $c75c : $87
	ora $ab                                                  ; $c75d : $05, $ab
	ora $db                                                  ; $c75f : $05, $db
	.db $83                                                  ; $c761 : $83
	.db $0f                                                  ; $c762 : $0f
	.db $0b                                                  ; $c763 : $0b
	.db $07                                                  ; $c764 : $07
	ora $13                                                  ; $c765 : $05, $13
	asl $022b                                                  ; $c767 : $0e, $2b, $02
	.db $4b                                                  ; $c76a : $4b
	.db $02                                                  ; $c76b : $02
	.db $0f                                                  ; $c76c : $0f
	bpl br_01_c77a                                                  ; $c76d : $10, $0b

	asl $37b0                                                  ; $c76f : $0e, $b0, $37
	bcc -$44                                                  ; $c772 : $90, $bc

	.db $80                                                  ; $c774 : $80
	ldy $44ae, x                                                  ; $c775 : $bc, $ae, $44
	cpy #$ff                                                  ; $c778 : $c0, $ff

br_01_c77a:
	asl a                                                  ; $c77a : $0a
	tax                                                  ; $c77b : $aa

br_01_c77c:
	cmp $8f, x                                                  ; $c77c : $d5, $8f
	.db $03                                                  ; $c77e : $03
	.db $8f                                                  ; $c77f : $8f
	rol $c644, x                                                  ; $c780 : $3e, $44, $c6
	cld                                                  ; $c783 : $d8
	.db $83                                                  ; $c784 : $83
	.db $0f                                                  ; $c785 : $0f
	asl $a6                                                  ; $c786 : $06, $a6
	ora ($b9), y                                                  ; $c788 : $11, $b9
	asl $9d39                                                  ; $c78a : $0e, $39, $9d
	adc $a61b, y                                                  ; $c78d : $79, $1b, $a6
	ora ($e8), y                                                  ; $c790 : $11, $e8
	.db $03                                                  ; $c792 : $03
	.db $87                                                  ; $c793 : $87
	.db $83                                                  ; $c794 : $83
	asl $90, x                                                  ; $c795 : $16, $90
	ldx $11                                                  ; $c797 : $a6, $11
	lda $051d, y                                                  ; $c799 : $b9, $1d, $05
	.db $8f                                                  ; $c79c : $8f
	sec                                                  ; $c79d : $38
	and #$89                                                  ; $c79e : $29, $89
	and #$26                                                  ; $c7a0 : $29, $26
	.db $8f                                                  ; $c7a2 : $8f
	lsr $29                                                  ; $c7a3 : $46, $29
	.db $ff                                                  ; $c7a5 : $ff
	.db $0f                                                  ; $c7a6 : $0f
	.db $04                                                  ; $c7a7 : $04
	.db $a3                                                  ; $c7a8 : $a3
	bpl br_01_c7ba                                                  ; $c7a9 : $10, $0f

	ora #$e3                                                  ; $c7ab : $09, $e3

Call_01_c7ad:
	and #$0f                                                  ; $c7ad : $29, $0f
	ora $2455                                                  ; $c7af : $0d, $55, $24
	lda #$24                                                  ; $c7b2 : $a9, $24
	.db $0f                                                  ; $c7b4 : $0f
	ora ($59), y                                                  ; $c7b5 : $11, $59
	ora $1ba9, x                                                  ; $c7b7 : $1d, $a9, $1b

br_01_c7ba:
	.db $23                                                  ; $c7ba : $23
	.db $8f                                                  ; $c7bb : $8f
	ora $9b, x                                                  ; $c7bc : $15, $9b
	.db $ff                                                  ; $c7be : $ff
	.db $0f                                                  ; $c7bf : $0f
	ora ($db, x)                                                  ; $c7c0 : $01, $db
	.db $02                                                  ; $c7c2 : $02
	bmi br_01_c77c                                                  ; $c7c3 : $30, $b7

	.db $80                                                  ; $c7c5 : $80
	.db $3b                                                  ; $c7c6 : $3b
	.db $1b                                                  ; $c7c7 : $1b
	stx $0e4a                                                  ; $c7c8 : $8e, $4a, $0e
	.db $eb                                                  ; $c7cb : $eb
	.db $03                                                  ; $c7cc : $03

Call_01_c7cd:
	.db $3b                                                  ; $c7cd : $3b
	.db $82                                                  ; $c7ce : $82
	.db $5b                                                  ; $c7cf : $5b
	.db $02                                                  ; $c7d0 : $02
	sbc $0f                                                  ; $c7d1 : $e5, $0f
	.db $14                                                  ; $c7d3 : $14
	.db $8f                                                  ; $c7d4 : $8f
	.db $44                                                  ; $c7d5 : $44
	.db $0f                                                  ; $c7d6 : $0f
	.db $5b                                                  ; $c7d7 : $5b
	.db $82                                                  ; $c7d8 : $82
	.db $0c                                                  ; $c7d9 : $0c
	sta $35                                                  ; $c7da : $85, $35
	.db $8f                                                  ; $c7dc : $8f
	asl $85                                                  ; $c7dd : $06, $85
	.db $e3                                                  ; $c7df : $e3
	ora $db                                                  ; $c7e0 : $05, $db
	.db $83                                                  ; $c7e2 : $83
	rol $e084, x                                                  ; $c7e3 : $3e, $84, $e0
	.db $ff                                                  ; $c7e6 : $ff
	.db $0f                                                  ; $c7e7 : $0f
	.db $02                                                  ; $c7e8 : $02
	asl a                                                  ; $c7e9 : $0a
	and #$f7                                                  ; $c7ea : $29, $f7
	.db $02                                                  ; $c7ec : $02
	.db $80                                                  ; $c7ed : $80
	ldy $826b, x                                                  ; $c7ee : $bc, $6b, $82
	.db $7b                                                  ; $c7f1 : $7b
	.db $02                                                  ; $c7f2 : $02
	.db $9b                                                  ; $c7f3 : $9b
	.db $02                                                  ; $c7f4 : $02
	.db $ab                                                  ; $c7f5 : $ab
	.db $02                                                  ; $c7f6 : $02
	and $0f8e, y                                                  ; $c7f7 : $39, $8e, $0f
	.db $07                                                  ; $c7fa : $07
	dec $ec35                                                  ; $c7fb : $ce, $35, $ec
	sbc $0f, x                                                  ; $c7fe : $f5, $0f
	.db $fb                                                  ; $c800 : $fb
	sta $fb                                                  ; $c801 : $85, $fb
	sta $3e                                                  ; $c803 : $85, $3e
	cpy $e3                                                  ; $c805 : $c4, $e3
	.db $a7                                                  ; $c807 : $a7
	.db $02                                                  ; $c808 : $02
	.db $ff                                                  ; $c809 : $ff
	ora #$a9                                                  ; $c80a : $09, $a9
	stx $11                                                  ; $c80c : $86, $11
	cmp $10, x                                                  ; $c80e : $d5, $10
	.db $a3                                                  ; $c810 : $a3
	.db $8f                                                  ; $c811 : $8f
	cmp $29, x                                                  ; $c812 : $d5, $29
	stx $91                                                  ; $c814 : $86, $91
	.db $2b                                                  ; $c816 : $2b
	.db $83                                                  ; $c817 : $83
	cli                                                  ; $c818 : $58
	.db $03                                                  ; $c819 : $03
	.db $5b                                                  ; $c81a : $5b
	sta $eb                                                  ; $c81b : $85, $eb
	ora $3e                                                  ; $c81d : $05, $3e
	ldy $0fe0, x                                                  ; $c81f : $bc, $e0, $0f
	ora #$43                                                  ; $c822 : $09, $43
	.db $0f                                                  ; $c824 : $0f
	.db $74                                                  ; $c825 : $74
	.db $0f                                                  ; $c826 : $0f
	.db $6b                                                  ; $c827 : $6b
	sta $db                                                  ; $c828 : $85, $db
	ora $c6                                                  ; $c82a : $05, $c6
	ldy $19                                                  ; $c82c : $a4, $19
	ldy $12                                                  ; $c82e : $a4, $12
	.db $8f                                                  ; $c830 : $8f
	.db $ff                                                  ; $c831 : $ff
	asl a                                                  ; $c832 : $0a
	tax                                                  ; $c833 : $aa
	rol $982b                                                  ; $c834 : $2e, $2b, $98
	rol $e736                                                  ; $c837 : $2e, $36, $e7
	.db $ff                                                  ; $c83a : $ff
	.db $0b                                                  ; $c83b : $0b
	.db $83                                                  ; $c83c : $83
	.db $b7                                                  ; $c83d : $b7
	.db $03                                                  ; $c83e : $03
	.db $d7                                                  ; $c83f : $d7
	.db $03                                                  ; $c840 : $03
	.db $0f                                                  ; $c841 : $0f
	ora $67                                                  ; $c842 : $05, $67
	.db $03                                                  ; $c844 : $03
	.db $7b                                                  ; $c845 : $7b
	.db $02                                                  ; $c846 : $02
	.db $9b                                                  ; $c847 : $9b
	.db $02                                                  ; $c848 : $02
	.db $80                                                  ; $c849 : $80
	lda $833b, y                                                  ; $c84a : $b9, $3b, $83
	lsr $80b4                                                  ; $c84d : $4e, $b4, $80
	stx $2b                                                  ; $c850 : $86, $2b
	cmp #$2c                                                  ; $c852 : $c9, $2c
	asl $ac, x                                                  ; $c854 : $16, $ac
	.db $67                                                  ; $c856 : $67
	ldy $de, x                                                  ; $c857 : $b4, $de
	.db $3b                                                  ; $c859 : $3b
	sta ($ff, x)                                                  ; $c85a : $81, $ff
	asl $caaf, x                                                  ; $c85c : $1e, $af, $ca
	asl $852c, x                                                  ; $c85f : $1e, $2c, $85
	.db $0f                                                  ; $c862 : $0f
	.db $04                                                  ; $c863 : $04
	asl $a72d, x                                                  ; $c864 : $1e, $2d, $a7
	asl $ce2f, x                                                  ; $c867 : $1e, $2f, $ce
	asl $e535, x                                                  ; $c86a : $1e, $35, $e5
	.db $0f                                                  ; $c86d : $0f
	.db $07                                                  ; $c86e : $07
	asl $872b, x                                                  ; $c86f : $1e, $2b, $87
	asl $c530, x                                                  ; $c872 : $1e, $30, $c5
	.db $ff                                                  ; $c875 : $ff
	.db $0f                                                  ; $c876 : $0f
	ora ($2e, x)                                                  ; $c877 : $01, $2e
	.db $3b                                                  ; $c879 : $3b
	lda ($5b, x)                                                  ; $c87a : $a1, $5b
	.db $07                                                  ; $c87c : $07

br_01_c87d:
	.db $ab                                                  ; $c87d : $ab
	.db $07                                                  ; $c87e : $07
	adc #$87                                                  ; $c87f : $69, $87
	tsx                                                  ; $c881 : $ba
	.db $07                                                  ; $c882 : $07
	.db $fb                                                  ; $c883 : $fb
	.db $87                                                  ; $c884 : $87
	adc $a7                                                  ; $c885 : $65, $a7
	ror a                                                  ; $c887 : $6a
	.db $27                                                  ; $c888 : $27
	ldx $a7                                                  ; $c889 : $a6, $a7
	ldy $1b27                                                  ; $c88b : $ac, $27, $1b
	.db $87                                                  ; $c88e : $87
	dey                                                  ; $c88f : $88
	.db $07                                                  ; $c890 : $07
	.db $2b                                                  ; $c891 : $2b
	.db $83                                                  ; $c892 : $83
	.db $7b                                                  ; $c893 : $7b
	.db $07                                                  ; $c894 : $07
	.db $a7                                                  ; $c895 : $a7
	bcc br_01_c87d                                                  ; $c896 : $90, $e5

	.db $83                                                  ; $c898 : $83
	.db $14                                                  ; $c899 : $14
	.db $a7                                                  ; $c89a : $a7
	ora $7727, y                                                  ; $c89b : $19, $27, $77
	.db $07                                                  ; $c89e : $07
	sed                                                  ; $c89f : $f8
	.db $07                                                  ; $c8a0 : $07
	.db $47                                                  ; $c8a1 : $47
	.db $8f                                                  ; $c8a2 : $8f
	lda $ff07, y                                                  ; $c8a3 : $b9, $07, $ff
	.db $07                                                  ; $c8a6 : $07
	.db $9b                                                  ; $c8a7 : $9b
	asl a                                                  ; $c8a8 : $0a
	.db $07                                                  ; $c8a9 : $07
	lda $661b, y                                                  ; $c8aa : $b9, $1b, $66
	.db $9b                                                  ; $c8ad : $9b
	sei                                                  ; $c8ae : $78
	.db $07                                                  ; $c8af : $07
	ldx $e567                                                  ; $c8b0 : $ae, $67, $e5
	.db $ff                                                  ; $c8b3 : $ff
	.db $97                                                  ; $c8b4 : $97
	.db $87                                                  ; $c8b5 : $87
	.db $cb                                                  ; $c8b6 : $cb
	.db $00                                                  ; $c8b7 : $00
	inc $f82b                                                  ; $c8b8 : $ee, $2b, $f8
	inc $ad2d, x                                                  ; $c8bb : $fe, $2d, $ad
	adc $87, x                                                  ; $c8be : $75, $87
	.db $d3                                                  ; $c8c0 : $d3
	.db $27                                                  ; $c8c1 : $27
	cmp $0f27, y                                                  ; $c8c2 : $d9, $27, $0f
	.db $04                                                  ; $c8c5 : $04
	lsr $0f, x                                                  ; $c8c6 : $56, $0f
	.db $ff                                                  ; $c8c8 : $ff
	.db $9b                                                  ; $c8c9 : $9b
	.db $07                                                  ; $c8ca : $07
	ora $32                                                  ; $c8cb : $05, $32
	asl $33                                                  ; $c8cd : $06, $33
	.db $07                                                  ; $c8cf : $07
	.db $33                                                  ; $c8d0 : $33
	rol $4c03, x                                                  ; $c8d1 : $3e, $03, $4c
	bvc br_01_c924                                                  ; $c8d4 : $50, $4e

	.db $07                                                  ; $c8d6 : $07
	.db $57                                                  ; $c8d7 : $57
	and ($6e), y                                                  ; $c8d8 : $31, $6e
	.db $03                                                  ; $c8da : $03
	.db $7c                                                  ; $c8db : $7c
	.db $52                                                  ; $c8dc : $52
	.db $9e                                                  ; $c8dd : $9e
	.db $07                                                  ; $c8de : $07
	inc $7e0a, x                                                  ; $c8df : $fe, $0a, $7e
	.db $89                                                  ; $c8e2 : $89
	.db $9e                                                  ; $c8e3 : $9e
	asl a                                                  ; $c8e4 : $0a
	inc $fe09                                                  ; $c8e5 : $ee, $09, $fe
	.db $0b                                                  ; $c8e8 : $0b
	.db $13                                                  ; $c8e9 : $13
	stx $091e                                                  ; $c8ea : $8e, $1e, $09
	rol $6e0a, x                                                  ; $c8ed : $3e, $0a, $6e
	ora #$87                                                  ; $c8f0 : $09, $87
	asl $029e                                                  ; $c8f2 : $0e, $9e, $02
	dec $07                                                  ; $c8f5 : $c6, $07
	dex                                                  ; $c8f7 : $ca
	asl $62f7                                                  ; $c8f8 : $0e, $f7, $62
	.db $07                                                  ; $c8fb : $07
	stx $6108                                                  ; $c8fc : $8e, $08, $61
	.db $17                                                  ; $c8ff : $17
	.db $62                                                  ; $c900 : $62
	asl $4e0a, x                                                  ; $c901 : $1e, $0a, $4e
	asl $5e                                                  ; $c904 : $06, $5e
	asl a                                                  ; $c906 : $0a
	ror $8e06, x                                                  ; $c907 : $7e, $06, $8e
	asl a                                                  ; $c90a : $0a
	ldx $be06                                                  ; $c90b : $ae, $06, $be
	.db $07                                                  ; $c90e : $07
	.db $f3                                                  ; $c90f : $f3
	asl $861e                                                  ; $c910 : $0e, $1e, $86
	rol $840a                                                  ; $c913 : $2e, $0a, $84
	.db $37                                                  ; $c916 : $37
	.db $93                                                  ; $c917 : $93
	rol $a2, x                                                  ; $c918 : $36, $a2
	eor $1e                                                  ; $c91a : $45, $1e
	.db $89                                                  ; $c91c : $89
	lsr $0e                                                  ; $c91d : $46, $0e
	ror $a70a                                                  ; $c91f : $6e, $0a, $a7
	and ($db), y                                                  ; $c922 : $31, $db

br_01_c924:
	rts                                                  ; $c924 : $60


	.db $f7                                                  ; $c925 : $f7
	rts                                                  ; $c926 : $60


	.db $1b                                                  ; $c927 : $1b
	cpx #$37                                                  ; $c928 : $e0, $37
	and ($7e), y                                                  ; $c92a : $31, $7e
	ora #$8e                                                  ; $c92c : $09, $8e
	.db $0b                                                  ; $c92e : $0b
	.db $a3                                                  ; $c92f : $a3
	asl $04fe                                                  ; $c930 : $0e, $fe, $04
	.db $17                                                  ; $c933 : $17
	.db $bb                                                  ; $c934 : $bb
	.db $47                                                  ; $c935 : $47
	asl $0e77                                                  ; $c936 : $0e, $77, $0e
	ldx $ce02, y                                                  ; $c939 : $be, $02, $ce
	asl a                                                  ; $c93c : $0a
	.db $07                                                  ; $c93d : $07
	stx $3117                                                  ; $c93e : $8e, $17, $31
	.db $63                                                  ; $c941 : $63
	and ($a7), y                                                  ; $c942 : $31, $a7
	.db $34                                                  ; $c944 : $34
	.db $c7                                                  ; $c945 : $c7
	asl $b113                                                  ; $c946 : $0e, $13, $b1
	lsr $1e09                                                  ; $c949 : $4e, $09, $1e
	txa                                                  ; $c94c : $8a
	ror $9702, x                                                  ; $c94d : $7e, $02, $97
	.db $34                                                  ; $c950 : $34
	.db $b7                                                  ; $c951 : $b7
	asl $0ace                                                  ; $c952 : $0e, $ce, $0a
	dec $d802, x                                                  ; $c955 : $de, $02, $d8
	adc ($f7, x)                                                  ; $c958 : $61, $f7
	.db $62                                                  ; $c95a : $62
	inc $0703, x                                                  ; $c95b : $fe, $03, $07
	ldy $17, x                                                  ; $c95e : $b4, $17
	asl $6247                                                  ; $c960 : $0e, $47, $62
	lsr $5e0a                                                  ; $c963 : $4e, $0a, $5e
	.db $03                                                  ; $c966 : $03
	eor ($61), y                                                  ; $c967 : $51, $61
	.db $67                                                  ; $c969 : $67
	.db $62                                                  ; $c96a : $62
	.db $77                                                  ; $c96b : $77
	.db $34                                                  ; $c96c : $34
	.db $b7                                                  ; $c96d : $b7
	.db $62                                                  ; $c96e : $62
	cmp ($61, x)                                                  ; $c96f : $c1, $61
	.db $da                                                  ; $c971 : $da
	rts                                                  ; $c972 : $60


	sbc #$61                                                  ; $c973 : $e9, $61
	sed                                                  ; $c975 : $f8
	.db $62                                                  ; $c976 : $62
	inc $0d0a, x                                                  ; $c977 : $fe, $0a, $0d
	cpy $01                                                  ; $c97a : $c4, $01
	.db $52                                                  ; $c97c : $52
	ora ($52), y                                                  ; $c97d : $11, $52
	and ($52, x)                                                  ; $c97f : $21, $52
	and ($52), y                                                  ; $c981 : $31, $52
	eor ($52, x)                                                  ; $c983 : $41, $52
	eor ($52), y                                                  ; $c985 : $51, $52
	adc ($52, x)                                                  ; $c987 : $61, $52
	cmp $ce43                                                  ; $c989 : $cd, $43, $ce
	ora #$de                                                  ; $c98c : $09, $de
	.db $0b                                                  ; $c98e : $0b
	cmp $fe42, x                                                  ; $c98f : $dd, $42, $fe
	.db $02                                                  ; $c992 : $02
	eor $fdc7, x                                                  ; $c993 : $5d, $c7, $fd
	.db $5b                                                  ; $c996 : $5b
	ora #$05                                                  ; $c997 : $09, $05
	.db $32                                                  ; $c999 : $32
	asl $33                                                  ; $c99a : $06, $33
	lsr $870a                                                  ; $c99c : $4e, $0a, $87
	and ($fe), y                                                  ; $c99f : $31, $fe
	.db $02                                                  ; $c9a1 : $02
	dey                                                  ; $c9a2 : $88
	.db $f2                                                  ; $c9a3 : $f2
	.db $c7                                                  ; $c9a4 : $c7
	.db $33                                                  ; $c9a5 : $33
	ora $0702                                                  ; $c9a6 : $0d, $02, $07
	asl $3417                                                  ; $c9a9 : $0e, $17, $34
	ror $8e0a                                                  ; $c9ac : $6e, $0a, $8e
	.db $02                                                  ; $c9af : $02
	.db $bf                                                  ; $c9b0 : $bf
	.db $67                                                  ; $c9b1 : $67
	sbc $b74b                                                  ; $c9b2 : $ed, $4b, $b7
	ldx $c3, y                                                  ; $c9b5 : $b6, $c3
	and $1e, x                                                  ; $c9b7 : $35, $1e
	txa                                                  ; $c9b9 : $8a
	rol $3302                                                  ; $c9ba : $2e, $02, $33
	.db $3f                                                  ; $c9bd : $3f
	.db $37                                                  ; $c9be : $37
	.db $3f                                                  ; $c9bf : $3f
	dey                                                  ; $c9c0 : $88
	.db $f2                                                  ; $c9c1 : $f2
	.db $c7                                                  ; $c9c2 : $c7
	.db $33                                                  ; $c9c3 : $33
	sbc $0d4b                                                  ; $c9c4 : $ed, $4b, $0d
	asl $03                                                  ; $c9c7 : $06, $03
	.db $33                                                  ; $c9c9 : $33
	.db $0f                                                  ; $c9ca : $0f
	.db $74                                                  ; $c9cb : $74
	.db $47                                                  ; $c9cc : $47
	.db $73                                                  ; $c9cd : $73
	.db $67                                                  ; $c9ce : $67
	.db $73                                                  ; $c9cf : $73
	ror $9e09, x                                                  ; $c9d0 : $7e, $09, $9e
	asl a                                                  ; $c9d3 : $0a
	sbc $f74b                                                  ; $c9d4 : $ed, $4b, $f7
	.db $32                                                  ; $c9d7 : $32
	.db $07                                                  ; $c9d8 : $07
	stx $0e97                                                  ; $c9d9 : $8e, $97, $0e
	ldx $de00                                                  ; $c9dc : $ae, $00, $de
	.db $02                                                  ; $c9df : $02
	.db $e3                                                  ; $c9e0 : $e3
	and $e7, x                                                  ; $c9e1 : $35, $e7
	and $3e, x                                                  ; $c9e3 : $35, $3e
	txa                                                  ; $c9e5 : $8a
	lsr $5302                                                  ; $c9e6 : $4e, $02, $53
	rol $3e57, x                                                  ; $c9e9 : $3e, $57, $3e
	.db $07                                                  ; $c9ec : $07
	stx $34a7                                                  ; $c9ed : $8e, $a7, $34
	.db $bf                                                  ; $c9f0 : $bf
	.db $63                                                  ; $c9f1 : $63
	sbc $2e4b                                                  ; $c9f2 : $ed, $4b, $2e
	txa                                                  ; $c9f5 : $8a
	inc $2e06, x                                                  ; $c9f6 : $fe, $06, $2e
	dey                                                  ; $c9f9 : $88
	.db $34                                                  ; $c9fa : $34
	.db $33                                                  ; $c9fb : $33
	and $33, x                                                  ; $c9fc : $35, $33
	ror $8e06                                                  ; $c9fe : $6e, $06, $8e
	.db $0c                                                  ; $ca01 : $0c
	ldx $fe06, y                                                  ; $ca02 : $be, $06, $fe
	asl a                                                  ; $ca05 : $0a
	ora ($d2, x)                                                  ; $ca06 : $01, $d2
	ora $1144                                                  ; $ca08 : $0d, $44, $11
	.db $52                                                  ; $ca0b : $52
	and ($52, x)                                                  ; $ca0c : $21, $52
	and ($52), y                                                  ; $ca0e : $31, $52
	eor ($52, x)                                                  ; $ca10 : $41, $52
	.db $42                                                  ; $ca12 : $42
	.db $0b                                                  ; $ca13 : $0b
	eor ($52), y                                                  ; $ca14 : $51, $52
	adc ($52, x)                                                  ; $ca16 : $61, $52
	cmp $ce43                                                  ; $ca18 : $cd, $43, $ce
	ora #$dd                                                  ; $ca1b : $09, $dd
	.db $42                                                  ; $ca1d : $42
	dec $fe0b, x                                                  ; $ca1e : $de, $0b, $fe
	.db $02                                                  ; $ca21 : $02
	eor $fdc7, x                                                  ; $ca22 : $5d, $c7, $fd
	cli                                                  ; $ca25 : $58
	.db $07                                                  ; $ca26 : $07
	ora $35                                                  ; $ca27 : $05, $35
	asl $3d                                                  ; $ca29 : $06, $3d
	.db $07                                                  ; $ca2b : $07
	and $06be, x                                                  ; $ca2c : $3d, $be, $06
	dec $f30c, x                                                  ; $ca2f : $de, $0c, $f3
	and $8e03, x                                                  ; $ca32 : $3d, $03, $8e
	ror $ce43                                                  ; $ca35 : $6e, $43, $ce
	asl a                                                  ; $ca38 : $0a
	sbc ($67, x)                                                  ; $ca39 : $e1, $67
	sbc ($67), y                                                  ; $ca3b : $f1, $67
	ora ($e7, x)                                                  ; $ca3d : $01, $e7
	ora ($67), y                                                  ; $ca3f : $11, $67
	asl $2805, x                                                  ; $ca41 : $1e, $05, $28
	and $406e, y                                                  ; $ca44 : $39, $6e, $40
	ldx $c701, y                                                  ; $ca47 : $be, $01, $c7
	asl $db                                                  ; $ca4a : $06, $db
	asl $de.w                                                  ; $ca4c : $0e, $de, $00
	.db $1f                                                  ; $ca4f : $1f
	.db $80                                                  ; $ca50 : $80
	.db $6f                                                  ; $ca51 : $6f
	.db $00                                                  ; $ca52 : $00
	.db $bf                                                  ; $ca53 : $bf
	.db $00                                                  ; $ca54 : $00
	.db $0f                                                  ; $ca55 : $0f
	.db $80                                                  ; $ca56 : $80
	.db $5f                                                  ; $ca57 : $5f
	.db $00                                                  ; $ca58 : $00
	ror $a805, x                                                  ; $ca59 : $7e, $05, $a8
	.db $37                                                  ; $ca5c : $37
	inc $2402, x                                                  ; $ca5d : $fe, $02, $24
	stx $3034                                                  ; $ca60 : $8e, $34, $30
	rol $4e0c, x                                                  ; $ca63 : $3e, $0c, $4e
	.db $43                                                  ; $ca66 : $43
	ldx $be0a                                                  ; $ca67 : $ae, $0a, $be
	.db $0c                                                  ; $ca6a : $0c
	inc $fe0a                                                  ; $ca6b : $ee, $0a, $fe
	.db $0c                                                  ; $ca6e : $0c
	rol $3e8a                                                  ; $ca6f : $2e, $8a, $3e
	.db $0c                                                  ; $ca72 : $0c
	ror $8e02, x                                                  ; $ca73 : $7e, $02, $8e
	asl $3698                                                  ; $ca76 : $0e, $98, $36
	lda $0834, y                                                  ; $ca79 : $b9, $34, $08
	.db $bf                                                  ; $ca7c : $bf
	ora #$3f                                                  ; $ca7d : $09, $3f
	asl $2e82                                                  ; $ca7f : $0e, $82, $2e
	stx $4e                                                  ; $ca82 : $86, $4e
	.db $0c                                                  ; $ca84 : $0c
	.db $9e                                                  ; $ca85 : $9e
	ora #$c1                                                  ; $ca86 : $09, $c1
	.db $62                                                  ; $ca88 : $62
	cpy $0e                                                  ; $ca89 : $c4, $0e
	inc $0e0c                                                  ; $ca8b : $ee, $0c, $0e
	stx $5e                                                  ; $ca8e : $86, $5e
	.db $0c                                                  ; $ca90 : $0c
	ror $a109, x                                                  ; $ca91 : $7e, $09, $a1
	.db $62                                                  ; $ca94 : $62
	ldy $0e                                                  ; $ca95 : $a4, $0e
	dec $fe0c                                                  ; $ca97 : $ce, $0c, $fe
	asl a                                                  ; $ca9a : $0a
	plp                                                  ; $ca9b : $28
	ldy $a6, x                                                  ; $ca9c : $b4, $a6
	and ($e8), y                                                  ; $ca9e : $31, $e8
	.db $34                                                  ; $caa0 : $34
	.db $8b                                                  ; $caa1 : $8b
	.db $b2                                                  ; $caa2 : $b2
	.db $9b                                                  ; $caa3 : $9b
	asl $07fe                                                  ; $caa4 : $0e, $fe, $07
	inc $0d8a, x                                                  ; $caa7 : $fe, $8a, $0d
	cpy $cd                                                  ; $caaa : $c4, $cd
	.db $43                                                  ; $caac : $43
	dec $dd09                                                  ; $caad : $ce, $09, $dd
	.db $42                                                  ; $cab0 : $42
	dec $fe0b, x                                                  ; $cab1 : $de, $0b, $fe
	.db $02                                                  ; $cab4 : $02
	eor $fdc7, x                                                  ; $cab5 : $5d, $c7, $fd
	.db $5b                                                  ; $cab8 : $5b
	.db $03                                                  ; $cab9 : $03
	ora $34                                                  ; $caba : $05, $34
	asl $35                                                  ; $cabc : $06, $35
	.db $07                                                  ; $cabe : $07
	rol $6e, x                                                  ; $cabf : $36, $6e
	asl a                                                  ; $cac1 : $0a
	inc $fe02                                                  ; $cac2 : $ee, $02, $fe
	ora $0d                                                  ; $cac5 : $05, $0d
	ora ($17, x)                                                  ; $cac7 : $01, $17
	asl $0e97                                                  ; $cac9 : $0e, $97, $0e
	.db $9e                                                  ; $cacc : $9e
	.db $02                                                  ; $cacd : $02
	dec $05                                                  ; $cace : $c6, $05
	.db $fa                                                  ; $cad0 : $fa

br_01_cad1:
	bmi br_01_cad1                                                  ; $cad1 : $30, $fe

	asl a                                                  ; $cad3 : $0a
	lsr $5782                                                  ; $cad4 : $4e, $82, $57
	asl $6258                                                  ; $cad7 : $0e, $58, $62
	pla                                                  ; $cada : $68
	.db $62                                                  ; $cadb : $62
	adc $8a61, y                                                  ; $cadc : $79, $61, $8a
	rts                                                  ; $cadf : $60


	stx $f50a                                                  ; $cae0 : $8e, $0a, $f5
	and ($f9), y                                                  ; $cae3 : $31, $f9
	.db $7b                                                  ; $cae5 : $7b
	and $97f3, y                                                  ; $cae6 : $39, $f3, $97
	.db $33                                                  ; $cae9 : $33
	lda $71, x                                                  ; $caea : $b5, $71
	and $4df3, y                                                  ; $caec : $39, $f3, $4d
	pha                                                  ; $caef : $48
	.db $9e                                                  ; $caf0 : $9e
	.db $02                                                  ; $caf1 : $02
	ldx $cd05                                                  ; $caf2 : $ae, $05, $cd
	lsr a                                                  ; $caf5 : $4a
	sbc $0e4b                                                  ; $caf6 : $ed, $4b, $0e
	sta ($17, x)                                                  ; $caf9 : $81, $17
	asl $39                                                  ; $cafb : $06, $39
	.db $73                                                  ; $cafd : $73
	.db $5c                                                  ; $cafe : $5c
	.db $02                                                  ; $caff : $02
	sta $65                                                  ; $cb00 : $85, $65
	sta $32, x                                                  ; $cb02 : $95, $32
	lda #$7b                                                  ; $cb04 : $a9, $7b
	cpy $5e03                                                  ; $cb06 : $cc, $03, $5e
	.db $8f                                                  ; $cb09 : $8f
	adc $fe47                                                  ; $cb0a : $6d, $47, $fe
	.db $02                                                  ; $cb0d : $02
	ora $3907                                                  ; $cb0e : $0d, $07, $39
	.db $73                                                  ; $cb11 : $73
	lsr $ae0a                                                  ; $cb12 : $4e, $0a, $ae
	.db $02                                                  ; $cb15 : $02
	cpx $0771                                                  ; $cb16 : $ec, $71, $07
	sta ($17, x)                                                  ; $cb19 : $81, $17
	.db $02                                                  ; $cb1b : $02
	and $e673, y                                                  ; $cb1c : $39, $73, $e6
	ora $39                                                  ; $cb1f : $05, $39
	.db $fb                                                  ; $cb21 : $fb
	lsr $c40a                                                  ; $cb22 : $4e, $0a, $c4
	and ($eb), y                                                  ; $cb25 : $31, $eb
	adc ($fe, x)                                                  ; $cb27 : $61, $fe
	.db $02                                                  ; $cb29 : $02
	.db $07                                                  ; $cb2a : $07
	bcs br_01_cb4b                                                  ; $cb2b : $b0, $1e

	asl a                                                  ; $cb2d : $0a
	lsr $5706                                                  ; $cb2e : $4e, $06, $57
	asl $02be                                                  ; $cb31 : $0e, $be, $02
	cmp #$61                                                  ; $cb34 : $c9, $61
	.db $da                                                  ; $cb36 : $da
	rts                                                  ; $cb37 : $60


	sbc $0e4b                                                  ; $cb38 : $ed, $4b, $0e
	sta $0d                                                  ; $cb3b : $85, $0d
	asl $0afe                                                  ; $cb3d : $0e, $fe, $0a
	sei                                                  ; $cb40 : $78
	cpx $8e                                                  ; $cb41 : $e4, $8e
	asl $b3                                                  ; $cb43 : $06, $b3
	asl $bf                                                  ; $cb45 : $06, $bf
	.db $47                                                  ; $cb47 : $47
	inc $6d0f                                                  ; $cb48 : $ee, $0f, $6d

br_01_cb4b:
	.db $c7                                                  ; $cb4b : $c7
	asl $3982                                                  ; $cb4c : $0e, $82, $39
	.db $73                                                  ; $cb4f : $73
	txs                                                  ; $cb50 : $9a
	rts                                                  ; $cb51 : $60


	lda #$61                                                  ; $cb52 : $a9, $61
	ldx $de06                                                  ; $cb54 : $ae, $06, $de
	asl a                                                  ; $cb57 : $0a
	.db $e7                                                  ; $cb58 : $e7
	.db $03                                                  ; $cb59 : $03
	.db $eb                                                  ; $cb5a : $eb
	adc $03f7, y                                                  ; $cb5b : $79, $f7, $03
	inc $0d06, x                                                  ; $cb5e : $fe, $06, $0d
	.db $14                                                  ; $cb61 : $14
	inc $5e0a, x                                                  ; $cb62 : $fe, $0a, $5e
	.db $82                                                  ; $cb65 : $82
	.db $7f                                                  ; $cb66 : $7f
	ror $9e                                                  ; $cb67 : $66, $9e
	asl a                                                  ; $cb69 : $0a
	sed                                                  ; $cb6a : $f8
	.db $64                                                  ; $cb6b : $64
	inc $9e0b, x                                                  ; $cb6c : $fe, $0b, $9e
	sty $be                                                  ; $cb6f : $84, $be
	ora $be                                                  ; $cb71 : $05, $be
	.db $82                                                  ; $cb73 : $82
	.db $da                                                  ; $cb74 : $da
	rts                                                  ; $cb75 : $60


	sbc #$61                                                  ; $cb76 : $e9, $61
	sed                                                  ; $cb78 : $f8
	.db $62                                                  ; $cb79 : $62
	inc $0d0a, x                                                  ; $cb7a : $fe, $0a, $0d
	cpy $11                                                  ; $cb7d : $c4, $11
	.db $64                                                  ; $cb7f : $64
	eor ($62), y                                                  ; $cb80 : $51, $62
	cmp $ce43                                                  ; $cb82 : $cd, $43, $ce
	ora #$dd                                                  ; $cb85 : $09, $dd
	.db $42                                                  ; $cb87 : $42
	dec $fe0b, x                                                  ; $cb88 : $de, $0b, $fe
	.db $02                                                  ; $cb8b : $02
	eor $fdc7, x                                                  ; $cb8c : $5d, $c7, $fd
	.db $52                                                  ; $cb8f : $52
	lda ($0f), y                                                  ; $cb90 : $b1, $0f
	jsr $756e                                                  ; $cb92 : $20, $6e, $75
	cpy $a373                                                  ; $cb95 : $cc, $73, $a3
	.db $b3                                                  ; $cb98 : $b3
	.db $bf                                                  ; $cb99 : $bf
	.db $74                                                  ; $cb9a : $74
	.db $0c                                                  ; $cb9b : $0c
	sty $83                                                  ; $cb9c : $84, $83
	.db $3f                                                  ; $cb9e : $3f
	.db $9f                                                  ; $cb9f : $9f
	.db $74                                                  ; $cba0 : $74
	.db $ef                                                  ; $cba1 : $ef
	adc ($ec), y                                                  ; $cba2 : $71, $ec
	ora ($2f, x)                                                  ; $cba4 : $01, $2f
	sbc ($2c), y                                                  ; $cba6 : $f1, $2c
	ora ($6f, x)                                                  ; $cba8 : $01, $6f
	adc ($6c), y                                                  ; $cbaa : $71, $6c
	ora ($a8, x)                                                  ; $cbac : $01, $a8
	sta ($aa), y                                                  ; $cbae : $91, $aa
	bpl br_01_cc29                                                  ; $cbb0 : $10, $77

	.db $fb                                                  ; $cbb2 : $fb
	lsr $f4, x                                                  ; $cbb3 : $56, $f4
	and $bff1, y                                                  ; $cbb5 : $39, $f1, $bf
	.db $37                                                  ; $cbb8 : $37
	.db $33                                                  ; $cbb9 : $33
	.db $e7                                                  ; $cbba : $e7
	.db $43                                                  ; $cbbb : $43
	.db $04                                                  ; $cbbc : $04
	.db $47                                                  ; $cbbd : $47
	.db $03                                                  ; $cbbe : $03
	jmp ($c305)                                                  ; $cbbf : $6c, $05, $c3


	.db $67                                                  ; $cbc2 : $67
	.db $d3                                                  ; $cbc3 : $d3
	.db $67                                                  ; $cbc4 : $67
	.db $e3                                                  ; $cbc5 : $e3
	.db $67                                                  ; $cbc6 : $67
	sbc $fc4c                                                  ; $cbc7 : $ed, $4c, $fc
	.db $07                                                  ; $cbca : $07
	.db $73                                                  ; $cbcb : $73
	.db $e7                                                  ; $cbcc : $e7
	.db $83                                                  ; $cbcd : $83
	.db $67                                                  ; $cbce : $67
	.db $93                                                  ; $cbcf : $93
	.db $67                                                  ; $cbd0 : $67
	.db $a3                                                  ; $cbd1 : $a3
	.db $67                                                  ; $cbd2 : $67
	ldy $4308, x                                                  ; $cbd3 : $bc, $08, $43
	.db $e7                                                  ; $cbd6 : $e7
	.db $53                                                  ; $cbd7 : $53
	.db $67                                                  ; $cbd8 : $67
	.db $dc                                                  ; $cbd9 : $dc
	.db $02                                                  ; $cbda : $02
	eor $c391, y                                                  ; $cbdb : $59, $91, $c3
	.db $33                                                  ; $cbde : $33
	cmp $df71, y                                                  ; $cbdf : $d9, $71, $df
	.db $72                                                  ; $cbe2 : $72
	and $5bcd                                                  ; $cbe3 : $2d, $cd, $5b
	adc ($9b), y                                                  ; $cbe6 : $71, $9b
	adc ($3b), y                                                  ; $cbe8 : $71, $3b
	sbc ($a7), y                                                  ; $cbea : $f1, $a7
	.db $c2                                                  ; $cbec : $c2
	.db $db                                                  ; $cbed : $db
	adc ($0d), y                                                  ; $cbee : $71, $0d
	bpl -$65                                                  ; $cbf0 : $10, $9b

	adc ($0a), y                                                  ; $cbf2 : $71, $0a
	bcs br_01_cc12                                                  ; $cbf4 : $b0, $1c

	.db $04                                                  ; $cbf6 : $04
	.db $67                                                  ; $cbf7 : $67
	.db $63                                                  ; $cbf8 : $63
	ror $64, x                                                  ; $cbf9 : $76, $64
	sta $65                                                  ; $cbfb : $85, $65
	sty $66, x                                                  ; $cbfd : $94, $66
	.db $a3                                                  ; $cbff : $a3
	.db $67                                                  ; $cc00 : $67
	.db $b3                                                  ; $cc01 : $b3
	.db $67                                                  ; $cc02 : $67
	cpy $7309                                                  ; $cc03 : $cc, $09, $73
	.db $a3                                                  ; $cc06 : $a3
	.db $87                                                  ; $cc07 : $87
	.db $22                                                  ; $cc08 : $22
	.db $b3                                                  ; $cc09 : $b3
	ora #$d6                                                  ; $cc0a : $09, $d6
	.db $83                                                  ; $cc0c : $83
	.db $e3                                                  ; $cc0d : $e3
	.db $03                                                  ; $cc0e : $03
	inc $0d3f, x                                                  ; $cc0f : $fe, $3f, $0d

br_01_cc12:
	ora $de, x                                                  ; $cc12 : $15, $de
	and ($ec), y                                                  ; $cc14 : $31, $ec
	ora ($03, x)                                                  ; $cc16 : $01, $03
	.db $f7                                                  ; $cc18 : $f7
	sta $df41, x                                                  ; $cc19 : $9d, $41, $df
	rol $0d                                                  ; $cc1c : $26, $0d
	clc                                                  ; $cc1e : $18
	and $7f71, y                                                  ; $cc1f : $39, $71, $7f
	.db $37                                                  ; $cc22 : $37
	.db $f2                                                  ; $cc23 : $f2
	pla                                                  ; $cc24 : $68
	ora ($e9, x)                                                  ; $cc25 : $01, $e9
	ora ($39), y                                                  ; $cc27 : $11, $39

br_01_cc29:
	pla                                                  ; $cc29 : $68
	.db $7a                                                  ; $cc2a : $7a
	dec $6d3f, x                                                  ; $cc2b : $de, $3f, $6d
	cmp $fd                                                  ; $cc2e : $c5, $fd
	bvc br_01_cc43                                                  ; $cc30 : $50, $11

	.db $0f                                                  ; $cc32 : $0f
	rol $df                                                  ; $cc33 : $26, $df
	.db $32                                                  ; $cc35 : $32
	inc $0d10, x                                                  ; $cc36 : $fe, $10, $0d
	ora ($98, x)                                                  ; $cc39 : $01, $98
	.db $74                                                  ; $cc3b : $74
	iny                                                  ; $cc3c : $c8
	.db $13                                                  ; $cc3d : $13
	.db $52                                                  ; $cc3e : $52
	sbc ($63, x)                                                  ; $cc3f : $e1, $63
	and ($61), y                                                  ; $cc41 : $31, $61

br_01_cc43:
	adc $61c6, y                                                  ; $cc43 : $79, $c6, $61
	asl $e1                                                  ; $cc46 : $06, $e1
	.db $8b                                                  ; $cc48 : $8b
	adc ($ab), y                                                  ; $cc49 : $71, $ab
	adc ($e4), y                                                  ; $cc4b : $71, $e4
	ora $19eb, y                                                  ; $cc4d : $19, $eb, $19
	rts                                                  ; $cc50 : $60


	stx $c8                                                  ; $cc51 : $86, $c8
	.db $13                                                  ; $cc53 : $13
	cmp $394b                                                  ; $cc54 : $cd, $4b, $39
	.db $f3                                                  ; $cc57 : $f3
	tya                                                  ; $cc58 : $98
	.db $13                                                  ; $cc59 : $13
	.db $17                                                  ; $cc5a : $17
	sbc $7c, x                                                  ; $cc5b : $f5, $7c
	ora $7f, x                                                  ; $cc5d : $15, $7f
	.db $13                                                  ; $cc5f : $13
	.db $cf                                                  ; $cc60 : $cf
	ora $d4, x                                                  ; $cc61 : $15, $d4
	rti                                                  ; $cc63 : $40


	.db $0b                                                  ; $cc64 : $0b
	txs                                                  ; $cc65 : $9a
	.db $23                                                  ; $cc66 : $23
	asl $32, x                                                  ; $cc67 : $16, $32
	.db $44                                                  ; $cc69 : $44
	.db $a3                                                  ; $cc6a : $a3
	sta $b2, x                                                  ; $cc6b : $95, $b2
	.db $43                                                  ; $cc6d : $43
	ora $270a                                                  ; $cc6e : $0d, $0a, $27
	.db $14                                                  ; $cc71 : $14
	and $a44a, x                                                  ; $cc72 : $3d, $4a, $a4
	rti                                                  ; $cc75 : $40


	ldy $bf16, x                                                  ; $cc76 : $bc, $16, $bf
	.db $13                                                  ; $cc79 : $13
	cpy $40                                                  ; $cc7a : $c4, $40
	.db $04                                                  ; $cc7c : $04
	cpy #$1f                                                  ; $cc7d : $c0, $1f
	asl $24, x                                                  ; $cc7f : $16, $24
	rti                                                  ; $cc81 : $40


	.db $43                                                  ; $cc82 : $43
	and ($ce), y                                                  ; $cc83 : $31, $ce
	ora ($dd), y                                                  ; $cc85 : $11, $dd
	eor ($0e, x)                                                  ; $cc87 : $41, $0e
	.db $d2                                                  ; $cc89 : $d2
	.db $3f                                                  ; $cc8a : $3f
	jsr Call_01_c73d                                                  ; $cc8b : $20, $3d, $c7
	sbc $a152, x                                                  ; $cc8e : $fd, $52, $a1
	.db $0f                                                  ; $cc91 : $0f
	jsr $406e                                                  ; $cc92 : $20, $6e, $40
	dec $61, x                                                  ; $cc95 : $d6, $61
	.db $e7                                                  ; $cc97 : $e7
	.db $07                                                  ; $cc98 : $07
	.db $f7                                                  ; $cc99 : $f7
	and ($16, x)                                                  ; $cc9a : $21, $16
	sbc ($34, x)                                                  ; $cc9c : $e1, $34
	.db $63                                                  ; $cc9e : $63
	.db $47                                                  ; $cc9f : $47
	and ($54, x)                                                  ; $cca0 : $21, $54
	.db $04                                                  ; $cca2 : $04
	.db $67                                                  ; $cca3 : $67
	asl a                                                  ; $cca4 : $0a
	.db $74                                                  ; $cca5 : $74
	.db $63                                                  ; $cca6 : $63
	.db $dc                                                  ; $cca7 : $dc
	ora ($06, x)                                                  ; $cca8 : $01, $06
	sbc ($17, x)                                                  ; $ccaa : $e1, $17
	rol $86                                                  ; $ccac : $26, $86
	adc ($66, x)                                                  ; $ccae : $61, $66
	.db $c2                                                  ; $ccb0 : $c2
	cli                                                  ; $ccb1 : $58
	cmp ($f7, x)                                                  ; $ccb2 : $c1, $f7
	.db $03                                                  ; $ccb4 : $03
	.db $04                                                  ; $ccb5 : $04
	inc $8a, x                                                  ; $ccb6 : $f6, $8a
	bpl -$64                                                  ; $ccb8 : $10, $9c

	.db $04                                                  ; $ccba : $04
	inx                                                  ; $ccbb : $e8
	.db $62                                                  ; $ccbc : $62
	sbc $0a61, y                                                  ; $ccbd : $f9, $61, $0a
	cpx #$53                                                  ; $ccc0 : $e0, $53
	and ($5f), y                                                  ; $ccc2 : $31, $5f
	.db $73                                                  ; $ccc4 : $73
	.db $7b                                                  ; $ccc5 : $7b
	adc ($77), y                                                  ; $ccc6 : $71, $77
	and $fc                                                  ; $ccc8 : $25, $fc
	.db $e2                                                  ; $ccca : $e2
	.db $17                                                  ; $cccb : $17
	tax                                                  ; $cccc : $aa
	.db $23                                                  ; $cccd : $23
	.db $00                                                  ; $ccce : $00
	.db $3c                                                  ; $cccf : $3c
	.db $67                                                  ; $ccd0 : $67
	.db $b3                                                  ; $ccd1 : $b3
	ora ($cc, x)                                                  ; $ccd2 : $01, $cc
	.db $63                                                  ; $ccd4 : $63
	.db $db                                                  ; $ccd5 : $db
	adc ($df), y                                                  ; $ccd6 : $71, $df
	.db $73                                                  ; $ccd8 : $73
	.db $fc                                                  ; $ccd9 : $fc
	.db $00                                                  ; $ccda : $00
	.db $4f                                                  ; $ccdb : $4f
	.db $b7                                                  ; $ccdc : $b7
	dex                                                  ; $ccdd : $ca
	.db $7a                                                  ; $ccde : $7a
	cmp $31                                                  ; $ccdf : $c5, $31
	cpx $3c54                                                  ; $cce1 : $ec, $54, $3c
	.db $dc                                                  ; $cce4 : $dc
	eor $0f4c, x                                                  ; $cce5 : $5d, $4c, $0f
	.db $b3                                                  ; $cce8 : $b3
	.db $47                                                  ; $cce9 : $47
	.db $63                                                  ; $ccea : $63
	.db $6b                                                  ; $cceb : $6b
	sbc ($8c), y                                                  ; $ccec : $f1, $8c
	asl a                                                  ; $ccee : $0a
	and $ecf1, y                                                  ; $ccef : $39, $f1, $ec
	.db $03                                                  ; $ccf2 : $03
	beq br_01_cd28                                                  ; $ccf3 : $f0, $33

	.db $0f                                                  ; $ccf5 : $0f
	.db $e2                                                  ; $ccf6 : $e2
	and #$73                                                  ; $ccf7 : $29, $73
	eor #$61                                                  ; $ccf9 : $49, $61
	cli                                                  ; $ccfb : $58
	.db $62                                                  ; $ccfc : $62
	.db $67                                                  ; $ccfd : $67
	.db $73                                                  ; $ccfe : $73
	sta $65                                                  ; $ccff : $85, $65
	sty $66, x                                                  ; $cd01 : $94, $66
	.db $a3                                                  ; $cd03 : $a3
	.db $77                                                  ; $cd04 : $77
	lda $4d4d                                                  ; $cd05 : $ad, $4d, $4d
	cmp ($6f, x)                                                  ; $cd08 : $c1, $6f
	rol $5d                                                  ; $cd0a : $26, $5d
	.db $c7                                                  ; $cd0c : $c7
	sbc $1150, x                                                  ; $cd0d : $fd, $50, $11
	.db $0f                                                  ; $cd10 : $0f
	rol $af                                                  ; $cd11 : $26, $af
	.db $32                                                  ; $cd13 : $32
	cld                                                  ; $cd14 : $d8
	.db $62                                                  ; $cd15 : $62
	dec $0810, x                                                  ; $cd16 : $de, $10, $08
	cpx $5a                                                  ; $cd19 : $e4, $5a
	.db $62                                                  ; $cd1b : $62
	jmp ($864c)                                                  ; $cd1c : $6c, $4c, $86


	.db $43                                                  ; $cd1f : $43
	lda $3a48                                                  ; $cd20 : $ad, $48, $3a
	.db $e2                                                  ; $cd23 : $e2
	.db $53                                                  ; $cd24 : $53
	.db $42                                                  ; $cd25 : $42
	dey                                                  ; $cd26 : $88
	.db $64                                                  ; $cd27 : $64

br_01_cd28:
	.db $9c                                                  ; $cd28 : $9c
	rol $08, x                                                  ; $cd29 : $36, $08
	cpx $4a                                                  ; $cd2b : $e4, $4a
	.db $62                                                  ; $cd2d : $62
	.db $5c                                                  ; $cd2e : $5c
	eor $e23a                                                  ; $cd2f : $4d, $3a, $e2
	.db $9c                                                  ; $cd32 : $9c
	.db $32                                                  ; $cd33 : $32
	.db $fc                                                  ; $cd34 : $fc
	eor ($3c, x)                                                  ; $cd35 : $41, $3c
	lda ($83), y                                                  ; $cd37 : $b1, $83
	.db $00                                                  ; $cd39 : $00
	ldy $2a42                                                  ; $cd3a : $ac, $42, $2a
	.db $e2                                                  ; $cd3d : $e2
	.db $3c                                                  ; $cd3e : $3c
	lsr $aa                                                  ; $cd3f : $46, $aa
	.db $62                                                  ; $cd41 : $62
	ldy $c64e, x                                                  ; $cd42 : $bc, $4e, $c6
	.db $43                                                  ; $cd45 : $43

br_01_cd46:
	lsr $c3                                                  ; $cd46 : $46, $c3
	tax                                                  ; $cd48 : $aa
	.db $62                                                  ; $cd49 : $62
	lda $0b48, x                                                  ; $cd4a : $bd, $48, $0b
	stx $47, y                                                  ; $cd4d : $96, $47
	.db $07                                                  ; $cd4f : $07
	.db $c7                                                  ; $cd50 : $c7
	.db $12                                                  ; $cd51 : $12
	.db $3c                                                  ; $cd52 : $3c
	.db $c2                                                  ; $cd53 : $c2

br_01_cd54:
	.db $9c                                                  ; $cd54 : $9c
	eor ($cd, x)                                                  ; $cd55 : $41, $cd
	pha                                                  ; $cd57 : $48
	.db $dc                                                  ; $cd58 : $dc
	.db $32                                                  ; $cd59 : $32
	jmp $bcc2                                                  ; $cd5a : $4c, $c2, $bc


	.db $32                                                  ; $cd5d : $32
	.db $1c                                                  ; $cd5e : $1c
	lda ($5a), y                                                  ; $cd5f : $b1, $5a
	.db $62                                                  ; $cd61 : $62
	jmp ($7644)                                                  ; $cd62 : $6c, $44, $76


	.db $43                                                  ; $cd65 : $43
	tsx                                                  ; $cd66 : $ba
	.db $62                                                  ; $cd67 : $62
	.db $dc                                                  ; $cd68 : $dc
	.db $32                                                  ; $cd69 : $32
	eor $73ca, x                                                  ; $cd6a : $5d, $ca, $73
	.db $12                                                  ; $cd6d : $12
	.db $e3                                                  ; $cd6e : $e3
	.db $12                                                  ; $cd6f : $12
	stx $9d91                                                  ; $cd70 : $8e, $91, $9d
	eor ($be, x)                                                  ; $cd73 : $41, $be
	.db $42                                                  ; $cd75 : $42
	.db $ef                                                  ; $cd76 : $ef
	jsr Call_01_c7cd                                                  ; $cd77 : $20, $cd, $c7
	sbc $b152, x                                                  ; $cd7a : $fd, $52, $b1
	.db $0f                                                  ; $cd7d : $0f
	jsr $766e                                                  ; $cd7e : $20, $6e, $76
	.db $03                                                  ; $cd81 : $03
	lda ($09), y                                                  ; $cd82 : $b1, $09
	adc ($0f), y                                                  ; $cd84 : $71, $0f
	adc ($6f), y                                                  ; $cd86 : $71, $6f
	.db $33                                                  ; $cd88 : $33
	.db $a7                                                  ; $cd89 : $a7
	.db $63                                                  ; $cd8a : $63
	.db $b7                                                  ; $cd8b : $b7
	.db $34                                                  ; $cd8c : $34
	ldy $4d0e, x                                                  ; $cd8d : $bc, $0e, $4d
	cpy $a603                                                  ; $cd90 : $cc, $03, $a6
	php                                                  ; $cd93 : $08
	.db $72                                                  ; $cd94 : $72
	.db $3f                                                  ; $cd95 : $3f
	.db $72                                                  ; $cd96 : $72
	adc $734c                                                  ; $cd97 : $6d, $4c, $73
	.db $07                                                  ; $cd9a : $07
	.db $77                                                  ; $cd9b : $77
	.db $73                                                  ; $cd9c : $73
	.db $83                                                  ; $cd9d : $83
	.db $27                                                  ; $cd9e : $27
	ldy $bf00                                                  ; $cd9f : $ac, $00, $bf
	.db $73                                                  ; $cda2 : $73
	.db $3c                                                  ; $cda3 : $3c
	.db $80                                                  ; $cda4 : $80
	txs                                                  ; $cda5 : $9a
	bmi br_01_cd54                                                  ; $cda6 : $30, $ac

	.db $5b                                                  ; $cda8 : $5b
	dec $3c                                                  ; $cda9 : $c6, $3c
	ror a                                                  ; $cdab : $6a
	bcs $75                                                  ; $cdac : $b0, $75

	bpl br_01_cd46                                                  ; $cdae : $10, $96

br_01_cdb0:
	.db $74                                                  ; $cdb0 : $74
	ldx $0a, y                                                  ; $cdb1 : $b6, $0a

br_01_cdb3:
	.db $da                                                  ; $cdb3 : $da
	bmi -$1d                                                  ; $cdb4 : $30, $e3

	plp                                                  ; $cdb6 : $28
	cpx $ed5b                                                  ; $cdb7 : $ec, $5b, $ed

br_01_cdba:
	pha                                                  ; $cdba : $48
	tax                                                  ; $cdbb : $aa
	bcs $33                                                  ; $cdbc : $b0, $33

	ldy $51, x                                                  ; $cdbe : $b4, $51
	adc $4aad, y                                                  ; $cdc0 : $79, $ad, $4a
	cmp $e34d, x                                                  ; $cdc3 : $dd, $4d, $e3
	bit $fa0c                                                  ; $cdc6 : $2c, $0c, $fa
	.db $73                                                  ; $cdc9 : $73
	.db $07                                                  ; $cdca : $07
	.db $b3                                                  ; $cdcb : $b3
	.db $04                                                  ; $cdcc : $04
	.db $cb                                                  ; $cdcd : $cb
	adc ($ec), y                                                  ; $cdce : $71, $ec
	.db $07                                                  ; $cdd0 : $07
	ora $390a                                                  ; $cdd1 : $0d, $0a, $39
	adc ($df), y                                                  ; $cdd4 : $71, $df
	.db $33                                                  ; $cdd6 : $33
	dex                                                  ; $cdd7 : $ca
	bcs br_01_cdb0                                                  ; $cdd8 : $b0, $d6

	bpl br_01_cdb3                                                  ; $cdda : $10, $d7

	bmi br_01_cdba                                                  ; $cddc : $30, $dc

	.db $0c                                                  ; $cdde : $0c
	.db $03                                                  ; $cddf : $03
	lda ($ad), y                                                  ; $cde0 : $b1, $ad
	eor ($ef, x)                                                  ; $cde2 : $41, $ef
	rol $ed                                                  ; $cde4 : $26, $ed
	.db $c7                                                  ; $cde6 : $c7
	and $0df1, y                                                  ; $cde7 : $39, $f1, $0d
	bpl br_01_ce69                                                  ; $cdea : $10, $7d

	jmp $130d                                                  ; $cdec : $4c, $0d, $13


	tay                                                  ; $cdef : $a8
	ora ($aa), y                                                  ; $cdf0 : $11, $aa
	bpl br_01_ce10                                                  ; $cdf2 : $10, $1c

	.db $83                                                  ; $cdf4 : $83
	.db $d7                                                  ; $cdf5 : $d7
	.db $7b                                                  ; $cdf6 : $7b
	.db $f3                                                  ; $cdf7 : $f3
	.db $67                                                  ; $cdf8 : $67
	eor $6dcd, x                                                  ; $cdf9 : $5d, $cd, $6d
	.db $47                                                  ; $cdfc : $47
	sbc $1156, x                                                  ; $cdfd : $fd, $56, $11
	.db $0f                                                  ; $ce00 : $0f
	rol $df                                                  ; $ce01 : $26, $df
	.db $32                                                  ; $ce03 : $32
	inc $0d11, x                                                  ; $ce04 : $fe, $11, $0d
	ora ($0c, x)                                                  ; $ce07 : $01, $0c
	.db $5f                                                  ; $ce09 : $5f
	.db $03                                                  ; $ce0a : $03
	.db $80                                                  ; $ce0b : $80
	.db $0c                                                  ; $ce0c : $0c
	.db $52                                                  ; $ce0d : $52
	and #$15                                                  ; $ce0e : $29, $15

br_01_ce10:
	.db $7c                                                  ; $ce10 : $7c
	.db $5b                                                  ; $ce11 : $5b
	.db $23                                                  ; $ce12 : $23
	.db $b2                                                  ; $ce13 : $b2
	and #$1f                                                  ; $ce14 : $29, $1f
	and ($79), y                                                  ; $ce16 : $31, $79
	.db $1c                                                  ; $ce18 : $1c
	dec $3b48, x                                                  ; $ce19 : $de, $48, $3b
	sbc $394b                                                  ; $ce1c : $ed, $4b, $39
	sbc ($cf), y                                                  ; $ce1f : $f1, $cf
	.db $b3                                                  ; $ce21 : $b3
	inc $3710, x                                                  ; $ce22 : $fe, $10, $37
	stx $0e77                                                  ; $ce25 : $8e, $77, $0e
	.db $9e                                                  ; $ce28 : $9e
	ora ($a8), y                                                  ; $ce29 : $11, $a8
	.db $34                                                  ; $ce2b : $34
	lda #$34                                                  ; $ce2c : $a9, $34
	tax                                                  ; $ce2e : $aa
	.db $34                                                  ; $ce2f : $34
	sed                                                  ; $ce30 : $f8
	.db $62                                                  ; $ce31 : $62
	inc $3710, x                                                  ; $ce32 : $fe, $10, $37
	ldx $de, y                                                  ; $ce35 : $b6, $de
	ora ($e7), y                                                  ; $ce37 : $11, $e7
	.db $63                                                  ; $ce39 : $63
	sed                                                  ; $ce3a : $f8
	.db $62                                                  ; $ce3b : $62
	ora #$e1                                                  ; $ce3c : $09, $e1
	asl $4710                                                  ; $ce3e : $0e, $10, $47
	rol $b7, x                                                  ; $ce41 : $36, $b7
	asl $91be                                                  ; $ce43 : $0e, $be, $91
	dex                                                  ; $ce46 : $ca
	.db $32                                                  ; $ce47 : $32
	inc $1d10                                                  ; $ce48 : $ee, $10, $1d
	dex                                                  ; $ce4b : $ca
	ror $8311, x                                                  ; $ce4c : $7e, $11, $83
	.db $77                                                  ; $ce4f : $77
	.db $9e                                                  ; $ce50 : $9e
	bpl $1e                                                  ; $ce51 : $10, $1e

	sta ($2d), y                                                  ; $ce53 : $91, $2d
	eor ($4f, x)                                                  ; $ce55 : $41, $4f
	rol $4d                                                  ; $ce57 : $26, $4d
	.db $c7                                                  ; $ce59 : $c7
	sbc $1157, x                                                  ; $ce5a : $fd, $57, $11
	.db $0f                                                  ; $ce5d : $0f
	rol $fe                                                  ; $ce5e : $26, $fe
	bpl $4b                                                  ; $ce60 : $10, $4b

	.db $92                                                  ; $ce62 : $92
	eor $ad0f, y                                                  ; $ce63 : $59, $0f, $ad
	jmp $93d3                                                  ; $ce66 : $4c, $d3, $93


br_01_ce69:
	.db $0b                                                  ; $ce69 : $0b
	sty $29, x                                                  ; $ce6a : $94, $29
	.db $0f                                                  ; $ce6c : $0f
	.db $7b                                                  ; $ce6d : $7b
	.db $93                                                  ; $ce6e : $93
	sta $0d0f, y                                                  ; $ce6f : $99, $0f, $0d
	asl $27                                                  ; $ce72 : $06, $27
	.db $12                                                  ; $ce74 : $12
	and $0f, x                                                  ; $ce75 : $35, $0f
	.db $23                                                  ; $ce77 : $23
	lda ($57), y                                                  ; $ce78 : $b1, $57
	adc $a3, x                                                  ; $ce7a : $75, $a3
	and ($ab), y                                                  ; $ce7c : $31, $ab
	adc ($f7), y                                                  ; $ce7e : $71, $f7
	adc $23, x                                                  ; $ce80 : $75, $23
	lda ($87), y                                                  ; $ce82 : $b1, $87
	.db $13                                                  ; $ce84 : $13
	sta $0f, x                                                  ; $ce85 : $95, $0f
	ora $230a                                                  ; $ce87 : $0d, $0a, $23
	and $38, x                                                  ; $ce8a : $35, $38
	.db $13                                                  ; $ce8c : $13
	eor $00, x                                                  ; $ce8d : $55, $00
	.db $9b                                                  ; $ce8f : $9b
	asl $0b, x                                                  ; $ce90 : $16, $0b
	stx $c7, y                                                  ; $ce92 : $96, $c7
	adc $3b, x                                                  ; $ce94 : $75, $3b
	.db $92                                                  ; $ce96 : $92
	eor #$0f                                                  ; $ce97 : $49, $0f
	lda $294c                                                  ; $ce99 : $ad, $4c, $29
	.db $92                                                  ; $ce9c : $92

br_01_ce9d:
	.db $52                                                  ; $ce9d : $52
	rti                                                  ; $ce9e : $40


	jmp ($6f15)                                                  ; $ce9f : $6c, $15, $6f


	ora ($72), y                                                  ; $cea2 : $11, $72
	rti                                                  ; $cea4 : $40


	.db $bf                                                  ; $cea5 : $bf
	ora $03, x                                                  ; $cea6 : $15, $03
	.db $93                                                  ; $cea8 : $93
	asl a                                                  ; $cea9 : $0a
	.db $13                                                  ; $ceaa : $13
	.db $12                                                  ; $ceab : $12
	eor ($8b, x)                                                  ; $ceac : $41, $8b
	.db $12                                                  ; $ceae : $12
	sta $0d0f, y                                                  ; $ceaf : $99, $0f, $0d
	bpl br_01_cefb                                                  ; $ceb2 : $10, $47

	asl $46, x                                                  ; $ceb4 : $16, $46
	eor $b3                                                  ; $ceb6 : $45, $b3
	.db $32                                                  ; $ceb8 : $32
	.db $13                                                  ; $ceb9 : $13
	lda ($57), y                                                  ; $ceba : $b1, $57
	asl $0ea7                                                  ; $cebc : $0e, $a7, $0e
	.db $d3                                                  ; $cebf : $d3
	and ($53), y                                                  ; $cec0 : $31, $53
	lda ($a6), y                                                  ; $cec2 : $b1, $a6
	and ($03), y                                                  ; $cec4 : $31, $03
	.db $b2                                                  ; $cec6 : $b2
	.db $13                                                  ; $cec7 : $13
	asl $4d8d                                                  ; $cec8 : $0e, $8d, $4d
	ldx $bd11                                                  ; $cecb : $ae, $11, $bd
	eor ($ee, x)                                                  ; $cece : $41, $ee
	.db $52                                                  ; $ced0 : $52
	.db $0f                                                  ; $ced1 : $0f
	ldy #$dd                                                  ; $ced2 : $a0, $dd
	.db $47                                                  ; $ced4 : $47
	sbc $a152, x                                                  ; $ced5 : $fd, $52, $a1
	.db $0f                                                  ; $ced8 : $0f
	jsr $656e                                                  ; $ced9 : $20, $6e, $65
	.db $57                                                  ; $cedc : $57
	.db $f3                                                  ; $cedd : $f3
	rts                                                  ; $cede : $60


	and ($6f, x)                                                  ; $cedf : $21, $6f
	.db $62                                                  ; $cee1 : $62
	ldy $0775                                                  ; $cee2 : $ac, $75, $07
	.db $80                                                  ; $cee5 : $80
	.db $1c                                                  ; $cee6 : $1c
	ror $87, x                                                  ; $cee7 : $76, $87
	ora ($9c, x)                                                  ; $cee9 : $01, $9c
	bvs br_01_ce9d                                                  ; $ceeb : $70, $b0

	.db $33                                                  ; $ceed : $33
	.db $cf                                                  ; $ceee : $cf
	ror $57                                                  ; $ceef : $66, $57
	.db $e3                                                  ; $cef1 : $e3
	jmp ($cd04)                                                  ; $cef2 : $6c, $04, $cd


	jmp $b09a                                                  ; $cef5 : $4c, $9a, $b0


	ldy $830c                                                  ; $cef8 : $ac, $0c, $83

br_01_cefb:
	lda ($8f), y                                                  ; $cefb : $b1, $8f
	.db $74                                                  ; $cefd : $74
	lda $f84d, x                                                  ; $cefe : $bd, $4d, $f8
	ora ($fa), y                                                  ; $cf01 : $11, $fa
	bpl -$7d                                                  ; $cf03 : $10, $83

	.db $87                                                  ; $cf05 : $87
	.db $93                                                  ; $cf06 : $93
	.db $22                                                  ; $cf07 : $22
	.db $9f                                                  ; $cf08 : $9f
	.db $74                                                  ; $cf09 : $74

Call_01_cf0a:
	eor $89f1, y                                                  ; $cf0a : $59, $f1, $89
	adc ($a9, x)                                                  ; $cf0d : $61, $a9
	adc ($bc, x)                                                  ; $cf0f : $61, $bc
	.db $0c                                                  ; $cf11 : $0c
	.db $67                                                  ; $cf12 : $67
	ldy #$eb                                                  ; $cf13 : $a0, $eb
	adc ($77), y                                                  ; $cf15 : $71, $77
	.db $87                                                  ; $cf17 : $87
	.db $7a                                                  ; $cf18 : $7a
	bpl -$7a                                                  ; $cf19 : $10, $86

	eor ($95), y                                                  ; $cf1b : $51, $95
	.db $52                                                  ; $cf1d : $52
	ldy $53                                                  ; $cf1e : $a4, $53
	ldx $04, y                                                  ; $cf20 : $b6, $04
	.db $b3                                                  ; $cf22 : $b3
	bit $26                                                  ; $cf23 : $24, $26
	sta $4a                                                  ; $cf25 : $85, $4a
	bpl br_01_cf7c                                                  ; $cf27 : $10, $53

	.db $23                                                  ; $cf29 : $23
	.db $5c                                                  ; $cf2a : $5c
	.db $00                                                  ; $cf2b : $00
	.db $6f                                                  ; $cf2c : $6f
	.db $73                                                  ; $cf2d : $73
	.db $93                                                  ; $cf2e : $93
	php                                                  ; $cf2f : $08
	.db $07                                                  ; $cf30 : $07
	.db $fb                                                  ; $cf31 : $fb
	bit $3304                                                  ; $cf32 : $2c, $04, $33
	bmi br_01_cfab                                                  ; $cf35 : $30, $74

	ror $eb, x                                                  ; $cf37 : $76, $eb
	adc ($57), y                                                  ; $cf39 : $71, $57
	.db $8b                                                  ; $cf3b : $8b
	jmp ($9602)                                                  ; $cf3c : $6c, $02, $96


	.db $74                                                  ; $cf3f : $74
	.db $e3                                                  ; $cf40 : $e3
	bmi $0c                                                  ; $cf41 : $30, $0c

	stx $7d                                                  ; $cf43 : $86, $7d
	eor ($bf, x)                                                  ; $cf45 : $41, $bf
	rol $bd                                                  ; $cf47 : $26, $bd
	.db $c7                                                  ; $cf49 : $c7
	sbc $6150, x                                                  ; $cf4a : $fd, $50, $61
	.db $0f                                                  ; $cf4d : $0f
	rol $bb                                                  ; $cf4e : $26, $bb
	sbc ($dc), y                                                  ; $cf50 : $f1, $dc
	asl $23                                                  ; $cf52 : $06, $23
	.db $87                                                  ; $cf54 : $87
	lda $71, x                                                  ; $cf55 : $b5, $71
	.db $b7                                                  ; $cf57 : $b7
	and ($d7), y                                                  ; $cf58 : $31, $d7
	plp                                                  ; $cf5a : $28
	asl $c5                                                  ; $cf5b : $06, $c5
	.db $67                                                  ; $cf5d : $67
	php                                                  ; $cf5e : $08
	ora $3905                                                  ; $cf5f : $0d, $05, $39
	adc ($7c), y                                                  ; $cf62 : $71, $7c
	.db $00                                                  ; $cf64 : $00
	.db $9e                                                  ; $cf65 : $9e
	.db $62                                                  ; $cf66 : $62
	ldx $0b, y                                                  ; $cf67 : $b6, $0b
	inc $08                                                  ; $cf69 : $e6, $08
	lsr $5de0                                                  ; $cf6b : $4e, $e0, $5d
	jmp $0f59                                                  ; $cf6e : $4c, $59, $0f


	jmp ($9302)                                                  ; $cf71 : $6c, $02, $93


	.db $67                                                  ; $cf74 : $67
	ldy $ad56                                                  ; $cf75 : $ac, $56, $ad
	jmp $b11f                                                  ; $cf78 : $4c, $1f, $b1


	.db $3c                                                  ; $cf7b : $3c

br_01_cf7c:
	ora ($98, x)                                                  ; $cf7c : $01, $98
	asl a                                                  ; $cf7e : $0a
	.db $9e                                                  ; $cf7f : $9e
	jsr $21a8                                                  ; $cf80 : $20, $a8, $21
	.db $f3                                                  ; $cf83 : $f3
	ora #$0e                                                  ; $cf84 : $09, $0e
	lda ($27, x)                                                  ; $cf86 : $a1, $27
	jsr $623e                                                  ; $cf88 : $20, $3e, $62
	lsr $08, x                                                  ; $cf8b : $56, $08
	adc $c64d, x                                                  ; $cf8d : $7d, $4d, $c6
	php                                                  ; $cf90 : $08
	rol $9ee0, x                                                  ; $cf91 : $3e, $e0, $9e
	.db $62                                                  ; $cf94 : $62
	ldx $08, y                                                  ; $cf95 : $b6, $08
	asl $4ce0, x                                                  ; $cf97 : $1e, $e0, $4c
	.db $00                                                  ; $cf9a : $00
	jmp ($a700)                                                  ; $cf9b : $6c, $00, $a7


	.db $7b                                                  ; $cf9e : $7b
	dec $6d2f, x                                                  ; $cf9f : $de, $2f, $6d
	.db $c7                                                  ; $cfa2 : $c7
	inc $0b10, x                                                  ; $cfa3 : $fe, $10, $0b
	.db $93                                                  ; $cfa6 : $93
	.db $5b                                                  ; $cfa7 : $5b
	ora $b7, x                                                  ; $cfa8 : $15, $b7

br_01_cfaa:
	.db $12                                                  ; $cfaa : $12

br_01_cfab:
	.db $03                                                  ; $cfab : $03
	sta ($ab), y                                                  ; $cfac : $91, $ab
	.db $1f                                                  ; $cfae : $1f
	lda $ef41, x                                                  ; $cfaf : $bd, $41, $ef
	rol $ad                                                  ; $cfb2 : $26, $ad
	.db $c7                                                  ; $cfb4 : $c7
	sbc $5050, x                                                  ; $cfb5 : $fd, $50, $50
	.db $0f                                                  ; $cfb8 : $0f
	rol $0b                                                  ; $cfb9 : $26, $0b
	.db $1f                                                  ; $cfbb : $1f
	.db $57                                                  ; $cfbc : $57
	.db $92                                                  ; $cfbd : $92
	.db $8b                                                  ; $cfbe : $8b
	.db $12                                                  ; $cfbf : $12
	.db $d2                                                  ; $cfc0 : $d2
	.db $14                                                  ; $cfc1 : $14
	.db $4b                                                  ; $cfc2 : $4b
	.db $92                                                  ; $cfc3 : $92
	eor $0b0f, y                                                  ; $cfc4 : $59, $0f, $0b
	sta $bb, x                                                  ; $cfc7 : $95, $bb
	.db $1f                                                  ; $cfc9 : $1f
	ldx $5852, y                                                  ; $cfca : $be, $52, $58
	.db $e2                                                  ; $cfcd : $e2
	.db $9e                                                  ; $cfce : $9e
	bvc -$69                                                  ; $cfcf : $50, $97

	php                                                  ; $cfd1 : $08
	.db $bb                                                  ; $cfd2 : $bb
	.db $1f                                                  ; $cfd3 : $1f
	ldx $b6d2                                                  ; $cfd4 : $ae, $d2, $b6
	php                                                  ; $cfd7 : $08
	.db $bb                                                  ; $cfd8 : $bb
	.db $1f                                                  ; $cfd9 : $1f
	cmp $f64a, x                                                  ; $cfda : $dd, $4a, $f6
	.db $07                                                  ; $cfdd : $07
	rol $89                                                  ; $cfde : $26, $89
	stx $9850                                                  ; $cfe0 : $8e, $50, $98
	.db $62                                                  ; $cfe3 : $62
	.db $eb                                                  ; $cfe4 : $eb
	ora ($07), y                                                  ; $cfe5 : $11, $07
	.db $f3                                                  ; $cfe7 : $f3
	.db $0b                                                  ; $cfe8 : $0b
	ora $522e, x                                                  ; $cfe9 : $1d, $2e, $52
	.db $47                                                  ; $cfec : $47
	asl a                                                  ; $cfed : $0a
	dec $eb50                                                  ; $cfee : $ce, $50, $eb
	.db $1f                                                  ; $cff1 : $1f
	inc $5e52                                                  ; $cff2 : $ee, $52, $5e
	bne -$27                                                  ; $cff5 : $d0, $d9

	.db $0f                                                  ; $cff7 : $0f
	.db $ab                                                  ; $cff8 : $ab
	.db $9f                                                  ; $cff9 : $9f
	ldx $8e52, y                                                  ; $cffa : $be, $52, $8e
	bne br_01_cfaa                                                  ; $cffd : $d0, $ab

	ora $52ae, x                                                  ; $cfff : $1d, $ae, $52
	rol $8b, x                                                  ; $d002 : $36, $8b
	lsr $08, x                                                  ; $d004 : $56, $08
	lsr $dc50, x                                                  ; $d006 : $5e, $50, $dc
	ora $df, x                                                  ; $d009 : $15, $df
	.db $12                                                  ; $d00b : $12
	.db $2f                                                  ; $d00c : $2f
	sta $c3, x                                                  ; $d00d : $95, $c3
	and ($5b), y                                                  ; $d00f : $31, $5b
	.db $9f                                                  ; $d011 : $9f
	adc $8e41                                                  ; $d012 : $6d, $41, $8e
	.db $52                                                  ; $d015 : $52
	.db $af                                                  ; $d016 : $af
	jsr Call_01_c7ad                                                  ; $d017 : $20, $ad, $c7
	sbc $c100, x                                                  ; $d01a : $fd, $00, $c1
	jmp $f300                                                  ; $d01d : $4c, $00, $f3


	.db $4f                                                  ; $d020 : $4f
	.db $fa                                                  ; $d021 : $fa
	dec $68                                                  ; $d022 : $c6, $68
	ldy #$69                                                  ; $d024 : $a0, $69
	jsr $206a                                                  ; $d026 : $20, $6a, $20
	.db $7a                                                  ; $d029 : $7a
	.db $47                                                  ; $d02a : $47
	sed                                                  ; $d02b : $f8
	jsr $20f9                                                  ; $d02c : $20, $f9, $20
	.db $fa                                                  ; $d02f : $fa
	jsr Call_01_cf0a                                                  ; $d030 : $20, $0a, $cf
	ldy $49, x                                                  ; $d033 : $b4, $49
	eor $a0, x                                                  ; $d035 : $55, $a0
	lsr $20, x                                                  ; $d037 : $56, $20
	.db $73                                                  ; $d039 : $73
	.db $47                                                  ; $d03a : $47
	sbc $20, x                                                  ; $d03b : $f5, $20
	inc $20, x                                                  ; $d03d : $f6, $20
	.db $22                                                  ; $d03f : $22
	lda ($41, x)                                                  ; $d040 : $a1, $41
	pha                                                  ; $d042 : $48
	.db $52                                                  ; $d043 : $52
	jsr $2072                                                  ; $d044 : $20, $72, $20
	.db $92                                                  ; $d047 : $92
	jsr $20b2                                                  ; $d048 : $20, $b2, $20
	inc $9b00, x                                                  ; $d04b : $fe, $00, $9b
	.db $c2                                                  ; $d04e : $c2
	lda $fdc7                                                  ; $d04f : $ad, $c7, $fd
	pha                                                  ; $d052 : $48
	.db $0f                                                  ; $d053 : $0f
	asl $2701, x                                                  ; $d054 : $1e, $01, $27
	asl $5e                                                  ; $d057 : $06, $5e
	.db $02                                                  ; $d059 : $02
	.db $8f                                                  ; $d05a : $8f
	.db $63                                                  ; $d05b : $63
	sty $ef01                                                  ; $d05c : $8c, $01, $ef
	.db $67                                                  ; $d05f : $67
	.db $1c                                                  ; $d060 : $1c
	sta ($2e, x)                                                  ; $d061 : $81, $2e
	ora #$3c                                                  ; $d063 : $09, $3c
	.db $63                                                  ; $d065 : $63
	.db $73                                                  ; $d066 : $73
	ora ($8c, x)                                                  ; $d067 : $01, $8c
	rts                                                  ; $d069 : $60


	inc $1e02, x                                                  ; $d06a : $fe, $02, $1e
	stx $023e                                                  ; $d06d : $8e, $3e, $02
	.db $44                                                  ; $d070 : $44
	.db $07                                                  ; $d071 : $07
	eor $52                                                  ; $d072 : $45, $52
	lsr $8e0e                                                  ; $d074 : $4e, $0e, $8e
	.db $02                                                  ; $d077 : $02
	sta $b571, y                                                  ; $d078 : $99, $71, $b5
	bit $b6                                                  ; $d07b : $24, $b6
	bit $b7                                                  ; $d07d : $24, $b7
	bit $fe                                                  ; $d07f : $24, $fe
	.db $02                                                  ; $d081 : $02
	.db $07                                                  ; $d082 : $07
	.db $87                                                  ; $d083 : $87
	.db $17                                                  ; $d084 : $17
	.db $22                                                  ; $d085 : $22
	.db $37                                                  ; $d086 : $37
	.db $52                                                  ; $d087 : $52
	.db $37                                                  ; $d088 : $37
	.db $0b                                                  ; $d089 : $0b
	.db $47                                                  ; $d08a : $47
	.db $52                                                  ; $d08b : $52
	lsr $570a                                                  ; $d08c : $4e, $0a, $57
	.db $52                                                  ; $d08f : $52
	lsr $6702, x                                                  ; $d090 : $5e, $02, $67
	.db $52                                                  ; $d093 : $52
	.db $77                                                  ; $d094 : $77
	.db $52                                                  ; $d095 : $52
	ror $870a, x                                                  ; $d096 : $7e, $0a, $87
	.db $52                                                  ; $d099 : $52
	stx $9602                                                  ; $d09a : $8e, $02, $96
	lsr $97                                                  ; $d09d : $46, $97
	.db $52                                                  ; $d09f : $52
	.db $a7                                                  ; $d0a0 : $a7
	.db $52                                                  ; $d0a1 : $52
	.db $b7                                                  ; $d0a2 : $b7
	.db $52                                                  ; $d0a3 : $52
	.db $c7                                                  ; $d0a4 : $c7
	.db $52                                                  ; $d0a5 : $52
	.db $d7                                                  ; $d0a6 : $d7
	.db $52                                                  ; $d0a7 : $52
	.db $e7                                                  ; $d0a8 : $e7
	.db $52                                                  ; $d0a9 : $52
	.db $f7                                                  ; $d0aa : $f7
	.db $52                                                  ; $d0ab : $52
	inc $0704, x                                                  ; $d0ac : $fe, $04, $07
	.db $a3                                                  ; $d0af : $a3
	.db $47                                                  ; $d0b0 : $47
	php                                                  ; $d0b1 : $08
	.db $57                                                  ; $d0b2 : $57
	rol $c7                                                  ; $d0b3 : $26, $c7
	asl a                                                  ; $d0b5 : $0a
	sbc #$71                                                  ; $d0b6 : $e9, $71
	.db $17                                                  ; $d0b8 : $17
	.db $a7                                                  ; $d0b9 : $a7
	.db $97                                                  ; $d0ba : $97
	php                                                  ; $d0bb : $08
	.db $9e                                                  ; $d0bc : $9e
	ora ($a0, x)                                                  ; $d0bd : $01, $a0
	bit $c6                                                  ; $d0bf : $24, $c6
	.db $74                                                  ; $d0c1 : $74
	beq $0c                                                  ; $d0c2 : $f0, $0c

	inc $0c04, x                                                  ; $d0c4 : $fe, $04, $0c
	.db $80                                                  ; $d0c7 : $80
	.db $6f                                                  ; $d0c8 : $6f
	.db $32                                                  ; $d0c9 : $32
	tya                                                  ; $d0ca : $98
	.db $62                                                  ; $d0cb : $62
	tay                                                  ; $d0cc : $a8
	.db $62                                                  ; $d0cd : $62
	ldy $c700, x                                                  ; $d0ce : $bc, $00, $c7
	.db $73                                                  ; $d0d1 : $73
	.db $e7                                                  ; $d0d2 : $e7
	.db $73                                                  ; $d0d3 : $73
	inc $7f02, x                                                  ; $d0d4 : $fe, $02, $7f
	.db $e7                                                  ; $d0d7 : $e7
	stx $9e01                                                  ; $d0d8 : $8e, $01, $9e
	.db $00                                                  ; $d0db : $00
	dec $f702, x                                                  ; $d0dc : $de, $02, $f7
	.db $0b                                                  ; $d0df : $0b
	inc $4e0e, x                                                  ; $d0e0 : $fe, $0e, $4e
	.db $82                                                  ; $d0e3 : $82
	.db $54                                                  ; $d0e4 : $54
	.db $52                                                  ; $d0e5 : $52
	.db $64                                                  ; $d0e6 : $64
	eor ($6e), y                                                  ; $d0e7 : $51, $6e
	.db $00                                                  ; $d0e9 : $00
	.db $74                                                  ; $d0ea : $74
	ora #$9f                                                  ; $d0eb : $09, $9f
	.db $00                                                  ; $d0ed : $00
	.db $df                                                  ; $d0ee : $df
	.db $00                                                  ; $d0ef : $00
	.db $2f                                                  ; $d0f0 : $2f
	.db $80                                                  ; $d0f1 : $80
	lsr $5902                                                  ; $d0f2 : $4e, $02, $59
	.db $47                                                  ; $d0f5 : $47
	dec $070a                                                  ; $d0f6 : $ce, $0a, $07
	sbc $68, x                                                  ; $d0f9 : $f5, $68
	.db $54                                                  ; $d0fb : $54
	.db $7f                                                  ; $d0fc : $7f
	.db $64                                                  ; $d0fd : $64
	dey                                                  ; $d0fe : $88
	.db $54                                                  ; $d0ff : $54
	tay                                                  ; $d100 : $a8
	.db $54                                                  ; $d101 : $54
	ldx $b801                                                  ; $d102 : $ae, $01, $b8
	.db $52                                                  ; $d105 : $52
	.db $bf                                                  ; $d106 : $bf
	.db $47                                                  ; $d107 : $47
	iny                                                  ; $d108 : $c8
	.db $52                                                  ; $d109 : $52
	cld                                                  ; $d10a : $d8
	.db $52                                                  ; $d10b : $52
	inx                                                  ; $d10c : $e8
	.db $52                                                  ; $d10d : $52
	inc $4d0f                                                  ; $d10e : $ee, $0f, $4d
	.db $c7                                                  ; $d111 : $c7
	ora $0e0d                                                  ; $d112 : $0d, $0d, $0e
	.db $02                                                  ; $d115 : $02
	pla                                                  ; $d116 : $68
	.db $7a                                                  ; $d117 : $7a
	ldx $ee01, y                                                  ; $d118 : $be, $01, $ee
	.db $0f                                                  ; $d11b : $0f
	adc $fdc5                                                  ; $d11c : $6d, $c5, $fd
	php                                                  ; $d11f : $08
	.db $0f                                                  ; $d120 : $0f
	asl $2e01                                                  ; $d121 : $0e, $01, $2e
	ora $38                                                  ; $d124 : $05, $38
	bit $4f3a                                                  ; $d126 : $2c, $3a, $4f
	php                                                  ; $d129 : $08
	ldy $0bc7                                                  ; $d12a : $ac, $c7, $0b
	dec $df01                                                  ; $d12d : $ce, $01, $df
	lsr a                                                  ; $d130 : $4a
	adc $0ec7                                                  ; $d131 : $6d, $c7, $0e
	sta ($00, x)                                                  ; $d134 : $81, $00
	.db $5a                                                  ; $d136 : $5a
	rol $b802                                                  ; $d137 : $2e, $02, $b8
	.db $4f                                                  ; $d13a : $4f
	.db $cf                                                  ; $d13b : $cf
	adc $0f                                                  ; $d13c : $65, $0f
	sbc $4f                                                  ; $d13e : $e5, $4f
	adc $8f                                                  ; $d140 : $65, $8f

br_01_d142:
	adc $df                                                  ; $d142 : $65, $df
	lsr a                                                  ; $d144 : $4a
	adc $0ec7                                                  ; $d145 : $6d, $c7, $0e
	sta ($00, x)                                                  ; $d148 : $81, $00
	.db $5a                                                  ; $d14a : $5a
	bmi br_01_d154                                                  ; $d14b : $30, $07

	.db $34                                                  ; $d14d : $34
	.db $52                                                  ; $d14e : $52
	rol $4202, x                                                  ; $d14f : $3e, $02, $42
	.db $47                                                  ; $d152 : $47
	.db $44                                                  ; $d153 : $44

br_01_d154:
	.db $47                                                  ; $d154 : $47
	lsr $27                                                  ; $d155 : $46, $27
	cpy #$0b                                                  ; $d157 : $c0, $0b
	cpy $52                                                  ; $d159 : $c4, $52
	.db $df                                                  ; $d15b : $df
	lsr a                                                  ; $d15c : $4a
	adc $fdc7                                                  ; $d15d : $6d, $c7, $fd
	eor ($01, x)                                                  ; $d160 : $41, $01
	.db $27                                                  ; $d162 : $27
	.db $d3                                                  ; $d163 : $d3
	adc $c451, y                                                  ; $d164 : $79, $51, $c4
	lsr $00, x                                                  ; $d167 : $56, $00
	.db $e2                                                  ; $d169 : $e2
	.db $03                                                  ; $d16a : $03
	.db $53                                                  ; $d16b : $53
	.db $0c                                                  ; $d16c : $0c
	.db $0f                                                  ; $d16d : $0f
	.db $12                                                  ; $d16e : $12
	.db $3b                                                  ; $d16f : $3b
	.db $1a                                                  ; $d170 : $1a
	.db $42                                                  ; $d171 : $42
	.db $43                                                  ; $d172 : $43
	.db $54                                                  ; $d173 : $54
	adc $8349                                                  ; $d174 : $6d, $49, $83
	.db $53                                                  ; $d177 : $53
	sta $c353, y                                                  ; $d178 : $99, $53, $c3
	.db $54                                                  ; $d17b : $54
	.db $da                                                  ; $d17c : $da
	.db $52                                                  ; $d17d : $52
	.db $0c                                                  ; $d17e : $0c
	sty $09                                                  ; $d17f : $84, $09
	.db $53                                                  ; $d181 : $53
	.db $53                                                  ; $d182 : $53
	.db $64                                                  ; $d183 : $64
	.db $63                                                  ; $d184 : $63
	and ($67), y                                                  ; $d185 : $31, $67
	.db $34                                                  ; $d187 : $34
	stx $41                                                  ; $d188 : $86, $41
	sty $a301                                                  ; $d18a : $8c, $01, $a3
	bmi br_01_d142                                                  ; $d18d : $30, $b3

	.db $64                                                  ; $d18f : $64
	cpy $d903                                                  ; $d190 : $cc, $03, $d9
	.db $42                                                  ; $d193 : $42
	.db $5c                                                  ; $d194 : $5c
	sty $a0                                                  ; $d195 : $84, $a0
	.db $62                                                  ; $d197 : $62
	tay                                                  ; $d198 : $a8
	.db $62                                                  ; $d199 : $62
	bcs br_01_d1fe                                                  ; $d19a : $b0, $62

	clv                                                  ; $d19c : $b8
	.db $62                                                  ; $d19d : $62
	cpy #$62                                                  ; $d19e : $c0, $62
	iny                                                  ; $d1a0 : $c8
	.db $62                                                  ; $d1a1 : $62
	bne $62                                                  ; $d1a2 : $d0, $62

	cld                                                  ; $d1a4 : $d8
	.db $62                                                  ; $d1a5 : $62
	cpx #$62                                                  ; $d1a6 : $e0, $62
	inx                                                  ; $d1a8 : $e8
	.db $62                                                  ; $d1a9 : $62
	asl $c2, x                                                  ; $d1aa : $16, $c2
	cli                                                  ; $d1ac : $58
	.db $52                                                  ; $d1ad : $52
	sty $a704                                                  ; $d1ae : $8c, $04, $a7
	eor $d0, x                                                  ; $d1b1 : $55, $d0
	.db $63                                                  ; $d1b3 : $63
	.db $d7                                                  ; $d1b4 : $d7
	adc $e2                                                  ; $d1b5 : $65, $e2
	adc ($e7, x)                                                  ; $d1b7 : $61, $e7
	adc $f2                                                  ; $d1b9 : $65, $f2
	adc ($f7, x)                                                  ; $d1bb : $61, $f7
	adc $13                                                  ; $d1bd : $65, $13
	clv                                                  ; $d1bf : $b8
	.db $17                                                  ; $d1c0 : $17
	sec                                                  ; $d1c1 : $38

br_01_d1c2:
	sty $1d03                                                  ; $d1c2 : $8c, $03, $1d
	cmp #$50                                                  ; $d1c5 : $c9, $50
	.db $62                                                  ; $d1c7 : $62
	.db $5c                                                  ; $d1c8 : $5c
	.db $0b                                                  ; $d1c9 : $0b
	.db $62                                                  ; $d1ca : $62
	rol $5263, x                                                  ; $d1cb : $3e, $63, $52
	txa                                                  ; $d1ce : $8a
	.db $52                                                  ; $d1cf : $52
	.db $93                                                  ; $d1d0 : $93
	.db $54                                                  ; $d1d1 : $54
	tax                                                  ; $d1d2 : $aa
	.db $42                                                  ; $d1d3 : $42
	.db $d3                                                  ; $d1d4 : $d3
	eor ($ea), y                                                  ; $d1d5 : $51, $ea
	eor ($03, x)                                                  ; $d1d7 : $41, $03
	.db $d3                                                  ; $d1d9 : $d3
	.db $1c                                                  ; $d1da : $1c
	.db $04                                                  ; $d1db : $04
	.db $1a                                                  ; $d1dc : $1a
	.db $52                                                  ; $d1dd : $52
	.db $33                                                  ; $d1de : $33
	eor $73, x                                                  ; $d1df : $55, $73
	.db $44                                                  ; $d1e1 : $44
	.db $77                                                  ; $d1e2 : $77
	.db $44                                                  ; $d1e3 : $44
	asl $d2, x                                                  ; $d1e4 : $16, $d2
	ora $1a31, y                                                  ; $d1e6 : $19, $31, $1a
	.db $32                                                  ; $d1e9 : $32
	.db $5c                                                  ; $d1ea : $5c
	.db $0f                                                  ; $d1eb : $0f
	txs                                                  ; $d1ec : $9a
	.db $47                                                  ; $d1ed : $47
	sta $64, x                                                  ; $d1ee : $95, $64
	lda $64                                                  ; $d1f0 : $a5, $64
	lda $64, x                                                  ; $d1f2 : $b5, $64
	cmp $64                                                  ; $d1f4 : $c5, $64
	cmp $64, x                                                  ; $d1f6 : $d5, $64
	sbc $64                                                  ; $d1f8 : $e5, $64
	sbc $64, x                                                  ; $d1fa : $f5, $64
	ora $e4                                                  ; $d1fc : $05, $e4

br_01_d1fe:
	rti                                                  ; $d1fe : $40


	adc ($42, x)                                                  ; $d1ff : $61, $42
	and $56, x                                                  ; $d201 : $35, $56
	.db $34                                                  ; $d203 : $34
	.db $5c                                                  ; $d204 : $5c
	ora #$a2                                                  ; $d205 : $09, $a2
	adc ($a6, x)                                                  ; $d207 : $61, $a6
	adc ($b3, x)                                                  ; $d209 : $61, $b3
	.db $34                                                  ; $d20b : $34
	.db $b7                                                  ; $d20c : $b7
	.db $34                                                  ; $d20d : $34
	.db $fc                                                  ; $d20e : $fc
	php                                                  ; $d20f : $08
	.db $0c                                                  ; $d210 : $0c
	.db $87                                                  ; $d211 : $87
	plp                                                  ; $d212 : $28
	.db $54                                                  ; $d213 : $54
	eor $9a53, y                                                  ; $d214 : $59, $53, $9a
	bmi br_01_d1c2                                                  ; $d217 : $30, $a9

	adc ($b8, x)                                                  ; $d219 : $61, $b8
	.db $62                                                  ; $d21b : $62
	ldx $d40b, y                                                  ; $d21c : $be, $0b, $d4
	rts                                                  ; $d21f : $60


	cmp $0d, x                                                  ; $d220 : $d5, $0d
	dec $0d0f, x                                                  ; $d222 : $de, $0f, $0d
	dex                                                  ; $d225 : $ca
	adc $fd47, x                                                  ; $d226 : $7d, $47, $fd
	.db $07                                                  ; $d229 : $07
	.db $0f                                                  ; $d22a : $0f
	asl $3902                                                  ; $d22b : $0e, $02, $39
	.db $73                                                  ; $d22e : $73
	ora $8e                                                  ; $d22f : $05, $8e
	rol $b70b                                                  ; $d231 : $2e, $0b, $b7
	asl $8e64                                                  ; $d234 : $0e, $64, $8e
	ror $ce02                                                  ; $d237 : $6e, $02, $ce
	asl $de                                                  ; $d23a : $06, $de
	.db $0f                                                  ; $d23c : $0f
	inc $0d                                                  ; $d23d : $e6, $0d
	adc $fdc7, x                                                  ; $d23f : $7d, $c7, $fd
	ora ($01, x)                                                  ; $d242 : $01, $01
	.db $77                                                  ; $d244 : $77
	and $43a3, y                                                  ; $d245 : $39, $a3, $43
	.db $00                                                  ; $d248 : $00
	.db $bf                                                  ; $d249 : $bf
	and #$51                                                  ; $d24a : $29, $51
	and $6148, y                                                  ; $d24c : $39, $48, $61
	eor $d6, x                                                  ; $d24f : $55, $d6
	.db $54                                                  ; $d251 : $54
	.db $d2                                                  ; $d252 : $d2
	.db $44                                                  ; $d253 : $44
	.db $0c                                                  ; $d254 : $0c
	.db $82                                                  ; $d255 : $82
	rol $3102                                                  ; $d256 : $2e, $02, $31
	ror $44                                                  ; $d259 : $66, $44
	.db $47                                                  ; $d25b : $47
	.db $47                                                  ; $d25c : $47
	.db $32                                                  ; $d25d : $32
	lsr a                                                  ; $d25e : $4a
	.db $47                                                  ; $d25f : $47
	.db $97                                                  ; $d260 : $97
	.db $32                                                  ; $d261 : $32
	cmp ($66, x)                                                  ; $d262 : $c1, $66
	dec $dc01                                                  ; $d264 : $ce, $01, $dc
	.db $02                                                  ; $d267 : $02
	inc $0c0e, x                                                  ; $d268 : $fe, $0e, $0c
	.db $8f                                                  ; $d26b : $8f
	php                                                  ; $d26c : $08
	.db $4f                                                  ; $d26d : $4f
	inc $2701, x                                                  ; $d26e : $fe, $01, $27
	.db $d3                                                  ; $d271 : $d3
	.db $5c                                                  ; $d272 : $5c
	.db $02                                                  ; $d273 : $02
	txs                                                  ; $d274 : $9a
	rts                                                  ; $d275 : $60


	lda #$61                                                  ; $d276 : $a9, $61
	clv                                                  ; $d278 : $b8
	.db $62                                                  ; $d279 : $62
	.db $c7                                                  ; $d27a : $c7
	.db $63                                                  ; $d27b : $63
	dec $d50f                                                  ; $d27c : $ce, $0f, $d5
	ora $c77d                                                  ; $d27f : $0d, $7d, $c7
	sbc $ffff, x                                                  ; $d282 : $fd, $ff, $ff
	.db $ff                                                  ; $d285 : $ff
	.db $ff                                                  ; $d286 : $ff
	.db $ff                                                  ; $d287 : $ff
	.db $ff                                                  ; $d288 : $ff
	.db $ff                                                  ; $d289 : $ff
	.db $ff                                                  ; $d28a : $ff
	.db $ff                                                  ; $d28b : $ff
	.db $ff                                                  ; $d28c : $ff
	.db $ff                                                  ; $d28d : $ff
	.db $ff                                                  ; $d28e : $ff
	.db $ff                                                  ; $d28f : $ff
	.db $ff                                                  ; $d290 : $ff
	.db $ff                                                  ; $d291 : $ff
	.db $ff                                                  ; $d292 : $ff
	.db $ff                                                  ; $d293 : $ff
	.db $ff                                                  ; $d294 : $ff
	.db $ff                                                  ; $d295 : $ff
	.db $ff                                                  ; $d296 : $ff
	.db $ff                                                  ; $d297 : $ff
	.db $ff                                                  ; $d298 : $ff
	.db $ff                                                  ; $d299 : $ff
	.db $ff                                                  ; $d29a : $ff
	.db $ff                                                  ; $d29b : $ff
	.db $ff                                                  ; $d29c : $ff
	.db $ff                                                  ; $d29d : $ff
	.db $ff                                                  ; $d29e : $ff