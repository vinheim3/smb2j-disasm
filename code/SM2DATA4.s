.include "includes.s"
        
.bank $003 slot 4
.org $0

	ldy $075f                                                  ; $c2b4 : $ac, $5f, $07
	lda $c357, y                                                  ; $c2b7 : $b9, $57, $c3
	clc                                                  ; $c2ba : $18
	adc $0760                                                  ; $c2bb : $6d, $60, $07
	tay                                                  ; $c2be : $a8
	lda $c360, y                                                  ; $c2bf : $b9, $60, $c3
	rts                                                  ; $c2c2 : $60


	lda $0750                                                  ; $c2c3 : $ad, $50, $07
	jsr $c2aa                                                  ; $c2c6 : $20, $aa, $c2
	tay                                                  ; $c2c9 : $a8
	lda $0750                                                  ; $c2ca : $ad, $50, $07
	and #$1f                                                  ; $c2cd : $29, $1f
	sta $074f                                                  ; $c2cf : $8d, $4f, $07
	lda $c372, y                                                  ; $c2d2 : $b9, $72, $c3
	clc                                                  ; $c2d5 : $18
	adc $074f                                                  ; $c2d6 : $6d, $4f, $07
	asl a                                                  ; $c2d9 : $0a
	tay                                                  ; $c2da : $a8
	lda $c377, y                                                  ; $c2db : $b9, $77, $c3
	sta $ea                                                  ; $c2de : $85, $ea
	lda $c376, y                                                  ; $c2e0 : $b9, $76, $c3
	sta $e9                                                  ; $c2e3 : $85, $e9
	ldy $074e                                                  ; $c2e5 : $ac, $4e, $07
	lda $c3a0, y                                                  ; $c2e8 : $b9, $a0, $c3
	clc                                                  ; $c2eb : $18
	adc $074f                                                  ; $c2ec : $6d, $4f, $07
	asl a                                                  ; $c2ef : $0a
	tay                                                  ; $c2f0 : $a8
	lda $c3a5, y                                                  ; $c2f1 : $b9, $a5, $c3
	sta $e8                                                  ; $c2f4 : $85, $e8
	lda $c3a4, y                                                  ; $c2f6 : $b9, $a4, $c3
	sta $e7                                                  ; $c2f9 : $85, $e7
	ldy #$00                                                  ; $c2fb : $a0, $00
	lda ($e7), y                                                  ; $c2fd : $b1, $e7
	pha                                                  ; $c2ff : $48
	and #$07                                                  ; $c300 : $29, $07
	cmp #$04                                                  ; $c302 : $c9, $04
	bcc br_03_c30b                                                  ; $c304 : $90, $05

	sta $0744                                                  ; $c306 : $8d, $44, $07
	lda #$00                                                  ; $c309 : $a9, $00

br_03_c30b:
	sta $0741                                                  ; $c30b : $8d, $41, $07
	pla                                                  ; $c30e : $68
	pha                                                  ; $c30f : $48
	and #$38                                                  ; $c310 : $29, $38
	lsr a                                                  ; $c312 : $4a
	lsr a                                                  ; $c313 : $4a
	lsr a                                                  ; $c314 : $4a
	sta $0710                                                  ; $c315 : $8d, $10, $07
	pla                                                  ; $c318 : $68
	and #$c0                                                  ; $c319 : $29, $c0
	clc                                                  ; $c31b : $18
	rol a                                                  ; $c31c : $2a
	rol a                                                  ; $c31d : $2a
	rol a                                                  ; $c31e : $2a
	sta $0715                                                  ; $c31f : $8d, $15, $07
	iny                                                  ; $c322 : $c8
	lda ($e7), y                                                  ; $c323 : $b1, $e7
	pha                                                  ; $c325 : $48
	and #$0f                                                  ; $c326 : $29, $0f
	sta $0727                                                  ; $c328 : $8d, $27, $07
	pla                                                  ; $c32b : $68
	pha                                                  ; $c32c : $48
	and #$30                                                  ; $c32d : $29, $30
	lsr a                                                  ; $c32f : $4a
	lsr a                                                  ; $c330 : $4a
	lsr a                                                  ; $c331 : $4a
	lsr a                                                  ; $c332 : $4a
	sta $0742                                                  ; $c333 : $8d, $42, $07
	pla                                                  ; $c336 : $68
	and #$c0                                                  ; $c337 : $29, $c0
	clc                                                  ; $c339 : $18
	rol a                                                  ; $c33a : $2a
	rol a                                                  ; $c33b : $2a
	rol a                                                  ; $c33c : $2a

br_03_c33d:
	cmp #$03                                                  ; $c33d : $c9, $03
	bne br_03_c346                                                  ; $c33f : $d0, $05

	sta $0743                                                  ; $c341 : $8d, $43, $07
	lda #$00                                                  ; $c344 : $a9, $00

br_03_c346:
	sta $0733                                                  ; $c346 : $8d, $33, $07
	lda $e7                                                  ; $c349 : $a5, $e7
	clc                                                  ; $c34b : $18
	adc #$02                                                  ; $c34c : $69, $02
	sta $e7                                                  ; $c34e : $85, $e7
	lda $e8                                                  ; $c350 : $a5, $e8
	adc #$00                                                  ; $c352 : $69, $00
	sta $e8                                                  ; $c354 : $85, $e8
	rts                                                  ; $c356 : $60


	.db $00                                                  ; $c357 : $00
	ora $0a                                                  ; $c358 : $05, $0a
	asl $00.w                                                  ; $c35a : $0e, $00, $00
	.db $00                                                  ; $c35d : $00
	.db $00                                                  ; $c35e : $00
	.db $00                                                  ; $c35f : $00
	jsr $402c                                                  ; $c360 : $20, $2c, $40
	and ($60, x)                                                  ; $c363 : $21, $60
	.db $22                                                  ; $c365 : $22
	bit $2300                                                  ; $c366 : $2c, $00, $23
	adc ($24, x)                                                  ; $c369 : $61, $24
	and $26                                                  ; $c36b : $25, $26
	.db $62                                                  ; $c36d : $62
	.db $27                                                  ; $c36e : $27
	plp                                                  ; $c36f : $28
	and #$63                                                  ; $c370 : $29, $63
	.db $14                                                  ; $c372 : $14
	.db $04                                                  ; $c373 : $04
	.db $12                                                  ; $c374 : $12
	.db $00                                                  ; $c375 : $00
	bne br_03_c33d                                                  ; $c376 : $d0, $c5

	sbc $c5, x                                                  ; $c378 : $f5, $c5
	.db $1c                                                  ; $c37a : $1c
	dec $5d                                                  ; $c37b : $c6, $5d
	dec $8c                                                  ; $c37d : $c6, $8c
	dec $c7                                                  ; $c37f : $c6, $c7
	dec $d6                                                  ; $c381 : $c6, $d6
	dec $04                                                  ; $c383 : $c6, $04
	.db $c7                                                  ; $c385 : $c7
	and #$c7                                                  ; $c386 : $29, $c7
	jmp $6bc7                                                  ; $c388 : $4c, $c7, $6b


	.db $c7                                                  ; $c38b : $c7
	txa                                                  ; $c38c : $8a
	.db $c7                                                  ; $c38d : $c7
	tax                                                  ; $c38e : $aa
	.db $c7                                                  ; $c38f : $c7
	.db $cb                                                  ; $c390 : $cb
	.db $c7                                                  ; $c391 : $c7
	.db $e2                                                  ; $c392 : $e2
	.db $c7                                                  ; $c393 : $c7
	.db $f2                                                  ; $c394 : $f2
	.db $c7                                                  ; $c395 : $c7
	rts                                                  ; $c396 : $60


	.db $c2                                                  ; $c397 : $c2
	rts                                                  ; $c398 : $60


	.db $c2                                                  ; $c399 : $c2
	ora ($c8, x)                                                  ; $c39a : $01, $c8
	.db $1b                                                  ; $c39c : $1b
	iny                                                  ; $c39d : $c8
	.db $2f                                                  ; $c39e : $2f
	iny                                                  ; $c39f : $c8
	.db $14                                                  ; $c3a0 : $14
	.db $04                                                  ; $c3a1 : $04
	.db $12                                                  ; $c3a2 : $12
	.db $00                                                  ; $c3a3 : $00
	.db $53                                                  ; $c3a4 : $53
	iny                                                  ; $c3a5 : $c8
	dec $c8                                                  ; $c3a6 : $c6, $c8
	.db $43                                                  ; $c3a8 : $43
	cmp #$de                                                  ; $c3a9 : $c9, $de
	cmp #$6d                                                  ; $c3ab : $c9, $6d
	dex                                                  ; $c3ad : $ca
	.db $fc                                                  ; $c3ae : $fc
	dex                                                  ; $c3af : $ca
	eor $cb, x                                                  ; $c3b0 : $55, $cb
	inc $cb                                                  ; $c3b2 : $e6, $cb
	eor $cc                                                  ; $c3b4 : $45, $cc
	ldy $17cc, x                                                  ; $c3b6 : $bc, $cc, $17
	cmp $cd94                                                  ; $c3b9 : $cd, $94, $cd
	ora ($ce), y                                                  ; $c3bc : $11, $ce
	.db $5c                                                  ; $c3be : $5c
	dec $cec7                                                  ; $c3bf : $ce, $c7, $ce
	nop                                                  ; $c3c2 : $ea
	dec $c274                                                  ; $c3c3 : $ce, $74, $c2
	adc ($c2, x)                                                  ; $c3c6 : $61, $c2
	.db $07                                                  ; $c3c8 : $07
	.db $cf                                                  ; $c3c9 : $cf
	.db $7c                                                  ; $c3ca : $7c
	.db $cf                                                  ; $c3cb : $cf
	.db $db                                                  ; $c3cc : $db
	.db $cf                                                  ; $c3cd : $cf
	ror $50, x                                                  ; $c3ce : $76, $50
	adc $50                                                  ; $c3d0 : $65, $50
	adc $b0, x                                                  ; $c3d2 : $75, $b0
	.db $00                                                  ; $c3d4 : $00
	.db $00                                                  ; $c3d5 : $00
	ldy #$07                                                  ; $c3d6 : $a0, $07

br_03_c3d8:
	lda $c3ce, y                                                  ; $c3d8 : $b9, $ce, $c3
	sta $6ffd, y                                                  ; $c3db : $99, $fd, $6f
	dey                                                  ; $c3de : $88
	bpl br_03_c3d8                                                  ; $c3df : $10, $f7

	rts                                                  ; $c3e1 : $60


	.db $ff                                                  ; $c3e2 : $ff
	.db $ff                                                  ; $c3e3 : $ff
	.db $ff                                                  ; $c3e4 : $ff
	.db $ff                                                  ; $c3e5 : $ff
	.db $ff                                                  ; $c3e6 : $ff
	.db $ff                                                  ; $c3e7 : $ff
	.db $ff                                                  ; $c3e8 : $ff
	.db $ff                                                  ; $c3e9 : $ff
	.db $ff                                                  ; $c3ea : $ff
	.db $ff                                                  ; $c3eb : $ff
	.db $ff                                                  ; $c3ec : $ff
	.db $ff                                                  ; $c3ed : $ff
	.db $ff                                                  ; $c3ee : $ff
	.db $ff                                                  ; $c3ef : $ff
	.db $ff                                                  ; $c3f0 : $ff
	.db $ff                                                  ; $c3f1 : $ff
	.db $ff                                                  ; $c3f2 : $ff
	.db $ff                                                  ; $c3f3 : $ff
	.db $ff                                                  ; $c3f4 : $ff
	.db $ff                                                  ; $c3f5 : $ff
	.db $ff                                                  ; $c3f6 : $ff
	.db $ff                                                  ; $c3f7 : $ff
	.db $ff                                                  ; $c3f8 : $ff
	.db $ff                                                  ; $c3f9 : $ff
	.db $ff                                                  ; $c3fa : $ff
	.db $ff                                                  ; $c3fb : $ff
	.db $ff                                                  ; $c3fc : $ff
	.db $ff                                                  ; $c3fd : $ff
	.db $ff                                                  ; $c3fe : $ff
	.db $ff                                                  ; $c3ff : $ff
	.db $ff                                                  ; $c400 : $ff
	.db $ff                                                  ; $c401 : $ff
	.db $ff                                                  ; $c402 : $ff
	.db $ff                                                  ; $c403 : $ff
	.db $ff                                                  ; $c404 : $ff
	.db $ff                                                  ; $c405 : $ff
	.db $ff                                                  ; $c406 : $ff
	.db $ff                                                  ; $c407 : $ff
	.db $ff                                                  ; $c408 : $ff
	.db $ff                                                  ; $c409 : $ff
	.db $ff                                                  ; $c40a : $ff
	.db $ff                                                  ; $c40b : $ff
	.db $ff                                                  ; $c40c : $ff
	.db $ff                                                  ; $c40d : $ff
	.db $ff                                                  ; $c40e : $ff
	.db $ff                                                  ; $c40f : $ff
	.db $ff                                                  ; $c410 : $ff
	.db $ff                                                  ; $c411 : $ff
	.db $ff                                                  ; $c412 : $ff
	.db $ff                                                  ; $c413 : $ff
	.db $ff                                                  ; $c414 : $ff
	.db $ff                                                  ; $c415 : $ff
	.db $ff                                                  ; $c416 : $ff
	.db $ff                                                  ; $c417 : $ff
	.db $ff                                                  ; $c418 : $ff
	.db $ff                                                  ; $c419 : $ff
	.db $ff                                                  ; $c41a : $ff
	.db $ff                                                  ; $c41b : $ff
	.db $ff                                                  ; $c41c : $ff
	.db $ff                                                  ; $c41d : $ff
	.db $ff                                                  ; $c41e : $ff
	.db $ff                                                  ; $c41f : $ff
	.db $ff                                                  ; $c420 : $ff
	.db $ff                                                  ; $c421 : $ff
	.db $ff                                                  ; $c422 : $ff
	.db $ff                                                  ; $c423 : $ff
	.db $ff                                                  ; $c424 : $ff
	.db $ff                                                  ; $c425 : $ff
	.db $ff                                                  ; $c426 : $ff
	.db $ff                                                  ; $c427 : $ff
	.db $ff                                                  ; $c428 : $ff
	.db $ff                                                  ; $c429 : $ff
	.db $ff                                                  ; $c42a : $ff
	.db $ff                                                  ; $c42b : $ff
	.db $ff                                                  ; $c42c : $ff
	.db $ff                                                  ; $c42d : $ff
	.db $ff                                                  ; $c42e : $ff
	.db $ff                                                  ; $c42f : $ff
	.db $ff                                                  ; $c430 : $ff
	.db $ff                                                  ; $c431 : $ff
	.db $ff                                                  ; $c432 : $ff
	.db $ff                                                  ; $c433 : $ff
	.db $ff                                                  ; $c434 : $ff
	.db $ff                                                  ; $c435 : $ff
	.db $ff                                                  ; $c436 : $ff
	.db $ff                                                  ; $c437 : $ff
	.db $ff                                                  ; $c438 : $ff
	.db $ff                                                  ; $c439 : $ff
	.db $ff                                                  ; $c43a : $ff
	.db $ff                                                  ; $c43b : $ff
	.db $ff                                                  ; $c43c : $ff
	.db $ff                                                  ; $c43d : $ff
	.db $ff                                                  ; $c43e : $ff
	.db $ff                                                  ; $c43f : $ff
	.db $ff                                                  ; $c440 : $ff
	.db $ff                                                  ; $c441 : $ff
	.db $ff                                                  ; $c442 : $ff
	.db $ff                                                  ; $c443 : $ff
	.db $ff                                                  ; $c444 : $ff
	.db $ff                                                  ; $c445 : $ff
	.db $ff                                                  ; $c446 : $ff
	.db $ff                                                  ; $c447 : $ff
	.db $ff                                                  ; $c448 : $ff
	.db $ff                                                  ; $c449 : $ff
	.db $ff                                                  ; $c44a : $ff
	.db $ff                                                  ; $c44b : $ff
	.db $ff                                                  ; $c44c : $ff
	.db $ff                                                  ; $c44d : $ff
	.db $ff                                                  ; $c44e : $ff
	.db $ff                                                  ; $c44f : $ff
	.db $ff                                                  ; $c450 : $ff
	.db $ff                                                  ; $c451 : $ff
	.db $ff                                                  ; $c452 : $ff
	.db $ff                                                  ; $c453 : $ff
	.db $ff                                                  ; $c454 : $ff
	.db $ff                                                  ; $c455 : $ff
	.db $ff                                                  ; $c456 : $ff
	.db $ff                                                  ; $c457 : $ff
	.db $ff                                                  ; $c458 : $ff
	.db $ff                                                  ; $c459 : $ff
	.db $ff                                                  ; $c45a : $ff
	.db $ff                                                  ; $c45b : $ff
	.db $ff                                                  ; $c45c : $ff
	.db $ff                                                  ; $c45d : $ff
	.db $ff                                                  ; $c45e : $ff
	.db $ff                                                  ; $c45f : $ff
	.db $ff                                                  ; $c460 : $ff
	.db $ff                                                  ; $c461 : $ff
	.db $ff                                                  ; $c462 : $ff
	.db $ff                                                  ; $c463 : $ff
	.db $ff                                                  ; $c464 : $ff
	.db $ff                                                  ; $c465 : $ff
	.db $ff                                                  ; $c466 : $ff
	.db $ff                                                  ; $c467 : $ff
	.db $ff                                                  ; $c468 : $ff
	.db $ff                                                  ; $c469 : $ff
	.db $ff                                                  ; $c46a : $ff
	.db $ff                                                  ; $c46b : $ff
	.db $ff                                                  ; $c46c : $ff
	.db $ff                                                  ; $c46d : $ff
	.db $ff                                                  ; $c46e : $ff
	.db $ff                                                  ; $c46f : $ff
	lda #$01                                                  ; $c470 : $a9, $01
	pha                                                  ; $c472 : $48
	bne br_03_c478                                                  ; $c473 : $d0, $03

	lda #$04                                                  ; $c475 : $a9, $04
	pha                                                  ; $c477 : $48

br_03_c478:
	jsr $7761                                                  ; $c478 : $20, $61, $77
	pla                                                  ; $c47b : $68
	sta $07                                                  ; $c47c : $85, $07
	tya                                                  ; $c47e : $98
	pha                                                  ; $c47f : $48
	ldy $0730, x                                                  ; $c480 : $bc, $30, $07
	beq br_03_c4a8                                                  ; $c483 : $f0, $23

	jsr $7791                                                  ; $c485 : $20, $91, $77
	bcs br_03_c4a8                                                  ; $c488 : $b0, $1e

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

br_03_c4a8:
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
	bne br_03_c4fd                                                  ; $c4c2 : $d0, $39

	lda $078a, x                                                  ; $c4c4 : $bd, $8a, $07
	bne br_03_c4fd                                                  ; $c4c7 : $d0, $34

br_03_c4c9:
	lda $a0, x                                                  ; $c4c9 : $b5, $a0
	bne br_03_c4d8                                                  ; $c4cb : $d0, $0b

	lda $58, x                                                  ; $c4cd : $b5, $58
	eor #$ff                                                  ; $c4cf : $49, $ff
	clc                                                  ; $c4d1 : $18
	adc #$01                                                  ; $c4d2 : $69, $01
	sta $58, x                                                  ; $c4d4 : $95, $58
	inc $a0, x                                                  ; $c4d6 : $f6, $a0

br_03_c4d8:
	lda $0417, x                                                  ; $c4d8 : $bd, $17, $04
	ldy $58, x                                                  ; $c4db : $b4, $58
	bpl br_03_c4e2                                                  ; $c4dd : $10, $03

	lda $0434, x                                                  ; $c4df : $bd, $34, $04

br_03_c4e2:
	sta $00                                                  ; $c4e2 : $85, $00
	lda $0747                                                  ; $c4e4 : $ad, $47, $07
	bne br_03_c4fd                                                  ; $c4e7 : $d0, $14

	lda $cf, x                                                  ; $c4e9 : $b5, $cf
	clc                                                  ; $c4eb : $18
	adc $58, x                                                  ; $c4ec : $75, $58
	sta $cf, x                                                  ; $c4ee : $95, $cf
	cmp $00                                                  ; $c4f0 : $c5, $00
	bne br_03_c4fd                                                  ; $c4f2 : $d0, $09

	lda #$00                                                  ; $c4f4 : $a9, $00
	sta $a0, x                                                  ; $c4f6 : $95, $a0
	lda #$20                                                  ; $c4f8 : $a9, $20
	sta $078a, x                                                  ; $c4fa : $9d, $8a, $07

br_03_c4fd:
	rts                                                  ; $c4fd : $60


	lda $07f9                                                  ; $c4fe : $ad, $f9, $07
	beq br_03_c52b                                                  ; $c501 : $f0, $28

	lda $074e                                                  ; $c503 : $ad, $4e, $07
	cmp #$01                                                  ; $c506 : $c9, $01
	bne br_03_c52b                                                  ; $c508 : $d0, $21

	ldy #$01                                                  ; $c50a : $a0, $01
	lda $09                                                  ; $c50c : $a5, $09
	asl a                                                  ; $c50e : $0a
	bcs br_03_c513                                                  ; $c50f : $b0, $02

	ldy #$03                                                  ; $c511 : $a0, $03

br_03_c513:
	sty $00                                                  ; $c513 : $84, $00
	lda $09                                                  ; $c515 : $a5, $09
	and $00                                                  ; $c517 : $25, $00
	bne br_03_c52b                                                  ; $c519 : $d0, $10

	lda $86                                                  ; $c51b : $a5, $86
	clc                                                  ; $c51d : $18
	adc #$01                                                  ; $c51e : $69, $01
	sta $86                                                  ; $c520 : $85, $86
	lda $6d                                                  ; $c522 : $a5, $6d
	adc #$00                                                  ; $c524 : $69, $00
	sta $6d                                                  ; $c526 : $85, $6d
	inc $06ff                                                  ; $c528 : $ee, $ff, $06

br_03_c52b:
	rts                                                  ; $c52b : $60


	bmi $70                                                  ; $c52c : $30, $70

	clv                                                  ; $c52e : $b8
	bvc br_03_c4c9                                                  ; $c52f : $50, $98

	bmi br_03_c5a3                                                  ; $c531 : $30, $70

	clv                                                  ; $c533 : $b8
	bvc -$68                                                  ; $c534 : $50, $98

	bmi $70                                                  ; $c536 : $30, $70

	bmi br_03_c56a                                                  ; $c538 : $30, $30

	bmi br_03_c59c                                                  ; $c53a : $30, $60

	rts                                                  ; $c53c : $60


	ldy #$a0                                                  ; $c53d : $a0, $a0
	ldy #$d0                                                  ; $c53f : $a0, $d0
	bne br_03_c513                                                  ; $c541 : $d0, $d0

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
	beq br_03_c588                                                  ; $c553 : $f0, $33

	lda #$04                                                  ; $c555 : $a9, $04
	sta $fd                                                  ; $c557 : $85, $fd
	jsr Call_03_c5a1                                                  ; $c559 : $20, $a1, $c5
	ldx #$00                                                  ; $c55c : $a2, $00
	ldy $06eb                                                  ; $c55e : $ac, $eb, $06

br_03_c561:
	lda $c52c, x                                                  ; $c561 : $bd, $2c, $c5
	sta $0200, y                                                  ; $c564 : $99, $00, $02
	lda $c544, x                                                  ; $c567 : $bd, $44, $c5

br_03_c56a:
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
	bne br_03_c584                                                  ; $c57f : $d0, $03

	ldy $06ec                                                  ; $c581 : $ac, $ec, $06

br_03_c584:
	cpx #$0c                                                  ; $c584 : $e0, $0c
	bne br_03_c561                                                  ; $c586 : $d0, $d9

br_03_c588:
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

br_03_c59c:
	cli                                                  ; $c59c : $58
	eor $595a, y                                                  ; $c59d : $59, $5a, $59
	.db $5a                                                  ; $c5a0 : $5a

Call_03_c5a1:
	ldx #$0b                                                  ; $c5a1 : $a2, $0b

br_03_c5a3:
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
	bpl br_03_c5a3                                                  ; $c5bb : $10, $e6

	rts                                                  ; $c5bd : $60


	lda #$01                                                  ; $c5be : $a9, $01
	bne br_03_c5c4                                                  ; $c5c0 : $d0, $02

	lda #$00                                                  ; $c5c2 : $a9, $00

br_03_c5c4:
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

br_03_c5d0:
	rol a                                                  ; $c5d0 : $2a
	.db $9e                                                  ; $c5d1 : $9e
	.db $6b                                                  ; $c5d2 : $6b
	.db $0c                                                  ; $c5d3 : $0c
	sta $ea1c                                                  ; $c5d4 : $8d, $1c, $ea
	.db $1f                                                  ; $c5d7 : $1f
	.db $1b                                                  ; $c5d8 : $1b
	sty $1ce6                                                  ; $c5d9 : $8c, $e6, $1c
	sty $bb9c                                                  ; $c5dc : $8c, $9c, $bb
	.db $0c                                                  ; $c5df : $0c
	.db $f3                                                  ; $c5e0 : $f3
	.db $83                                                  ; $c5e1 : $83
	.db $9b                                                  ; $c5e2 : $9b
	sty $0cdb                                                  ; $c5e3 : $8c, $db, $0c
	.db $1b                                                  ; $c5e6 : $1b
	sty $0c6b                                                  ; $c5e7 : $8c, $6b, $0c
	.db $bb                                                  ; $c5ea : $bb
	.db $0c                                                  ; $c5eb : $0c
	.db $0f                                                  ; $c5ec : $0f
	ora #$40                                                  ; $c5ed : $09, $40
	ora $78, x                                                  ; $c5ef : $15, $78
	lda $b590                                                  ; $c5f1 : $ad, $90, $b5
	.db $ff                                                  ; $c5f4 : $ff
	.db $0f                                                  ; $c5f5 : $0f
	.db $02                                                  ; $c5f6 : $02
	sec                                                  ; $c5f7 : $38
	ora $1bd9, x                                                  ; $c5f8 : $1d, $d9, $1b
	ror $21e1                                                  ; $c5fb : $6e, $e1, $21
	.db $3a                                                  ; $c5fe : $3a
	tay                                                  ; $c5ff : $a8
	clc                                                  ; $c600 : $18
	sta $070f, x                                                  ; $c601 : $9d, $0f, $07
	clc                                                  ; $c604 : $18
	ora $090f, x                                                  ; $c605 : $1d, $0f, $09
	clc                                                  ; $c608 : $18
	ora $0b0f, x                                                  ; $c609 : $1d, $0f, $0b
	clc                                                  ; $c60c : $18
	ora $157b, x                                                  ; $c60d : $1d, $7b, $15
	stx $2e21                                                  ; $c610 : $8e, $21, $2e
	lda $0f9d, y                                                  ; $c613 : $b9, $9d, $0f
	asl $2d78                                                  ; $c616 : $0e, $78, $2d
	bcc br_03_c5d0                                                  ; $c619 : $90, $b5

	.db $ff                                                  ; $c61b : $ff
	ora $9d                                                  ; $c61c : $05, $9d
	adc $1d                                                  ; $c61e : $65, $1d
	ora $dda8                                                  ; $c620 : $0d, $a8, $dd
	ora $ac07, x                                                  ; $c623 : $1d, $07, $ac
	.db $54                                                  ; $c626 : $54
	bit $2ca2                                                  ; $c627 : $2c, $a2, $2c
	.db $f4                                                  ; $c62a : $f4
	bit $ac42                                                  ; $c62b : $2c, $42, $ac
	rol $9d                                                  ; $c62e : $26, $9d
	.db $d4                                                  ; $c630 : $d4
	.db $03                                                  ; $c631 : $03
	bit $83                                                  ; $c632 : $24, $83
	.db $64                                                  ; $c634 : $64
	.db $03                                                  ; $c635 : $03
	.db $2b                                                  ; $c636 : $2b
	.db $82                                                  ; $c637 : $82
	.db $4b                                                  ; $c638 : $4b
	.db $02                                                  ; $c639 : $02
	.db $7b                                                  ; $c63a : $7b
	.db $02                                                  ; $c63b : $02
	.db $9b                                                  ; $c63c : $9b
	.db $02                                                  ; $c63d : $02
	.db $5b                                                  ; $c63e : $5b
	.db $82                                                  ; $c63f : $82
	.db $7b                                                  ; $c640 : $7b
	.db $02                                                  ; $c641 : $02
	.db $0b                                                  ; $c642 : $0b
	.db $82                                                  ; $c643 : $82
	.db $2b                                                  ; $c644 : $2b
	.db $02                                                  ; $c645 : $02
	dec $1b                                                  ; $c646 : $c6, $1b
	plp                                                  ; $c648 : $28
	.db $82                                                  ; $c649 : $82
	pha                                                  ; $c64a : $48
	.db $02                                                  ; $c64b : $02
	ldx $1b                                                  ; $c64c : $a6, $1b
	.db $7b                                                  ; $c64e : $7b
	sta $85, x                                                  ; $c64f : $95, $85
	.db $0c                                                  ; $c651 : $0c
	sta $0f9b, x                                                  ; $c652 : $9d, $9b, $0f
	asl $2d78                                                  ; $c655 : $0e, $78, $2d
	.db $7a                                                  ; $c658 : $7a
	ora $b590, x                                                  ; $c659 : $1d, $90, $b5
	.db $ff                                                  ; $c65c : $ff
	ora $999f, y                                                  ; $c65d : $19, $9f, $99
	.db $1b                                                  ; $c660 : $1b
	bit $598c                                                  ; $c661 : $2c, $8c, $59
	.db $1b                                                  ; $c664 : $1b
	cmp $0f                                                  ; $c665 : $c5, $0f
	.db $0f                                                  ; $c667 : $0f
	.db $04                                                  ; $c668 : $04
	ora #$29                                                  ; $c669 : $09, $29
	lda $0f1d, x                                                  ; $c66b : $bd, $1d, $0f
	asl $6e                                                  ; $c66e : $06, $6e
	rol a                                                  ; $c670 : $2a
	adc ($0f, x)                                                  ; $c671 : $61, $0f
	ora #$48                                                  ; $c673 : $09, $48
	and $8746                                                  ; $c675 : $2d, $46, $87
	adc $8e07, y                                                  ; $c678 : $79, $07, $8e
	.db $63                                                  ; $c67b : $63
	rts                                                  ; $c67c : $60


	lda $07                                                  ; $c67d : $a5, $07
	clv                                                  ; $c67f : $b8
	sta $57                                                  ; $c680 : $85, $57
	lda $8c                                                  ; $c682 : $a5, $8c
	sty $9d76                                                  ; $c684 : $8c, $76, $9d
	sei                                                  ; $c687 : $78
	and $b590                                                  ; $c688 : $2d, $90, $b5
	.db $ff                                                  ; $c68b : $ff
	.db $07                                                  ; $c68c : $07
	.db $83                                                  ; $c68d : $83
	.db $37                                                  ; $c68e : $37

br_03_c68f:
	.db $03                                                  ; $c68f : $03
	.db $6b                                                  ; $c690 : $6b
	asl $3de0                                                  ; $c691 : $0e, $e0, $3d
	jsr $6ebe                                                  ; $c694 : $20, $be, $6e
	.db $2b                                                  ; $c697 : $2b
	.db $00                                                  ; $c698 : $00
	.db $a7                                                  ; $c699 : $a7
	sta $d3                                                  ; $c69a : $85, $d3
	ora $e7                                                  ; $c69c : $05, $e7
	.db $83                                                  ; $c69e : $83
	bit $83                                                  ; $c69f : $24, $83
	.db $27                                                  ; $c6a1 : $27
	.db $03                                                  ; $c6a2 : $03
	eor #$00                                                  ; $c6a3 : $49, $00
	eor $1000, y                                                  ; $c6a5 : $59, $00, $10
	.db $bb                                                  ; $c6a8 : $bb
	bcs $3b                                                  ; $c6a9 : $b0, $3b

	ror $c1.w                                                  ; $c6ab : $6e, $c1, $00
	.db $17                                                  ; $c6ae : $17
	sta $53                                                  ; $c6af : $85, $53
	ora $36                                                  ; $c6b1 : $05, $36
	stx $0e76                                                  ; $c6b3 : $8e, $76, $0e
	ldx $0e, y                                                  ; $c6b6 : $b6, $0e
	.db $e7                                                  ; $c6b8 : $e7
	.db $83                                                  ; $c6b9 : $83
	.db $63                                                  ; $c6ba : $63
	.db $83                                                  ; $c6bb : $83
	pla                                                  ; $c6bc : $68
	.db $03                                                  ; $c6bd : $03
	and #$83                                                  ; $c6be : $29, $83
	.db $57                                                  ; $c6c0 : $57
	.db $03                                                  ; $c6c1 : $03
	sta $03                                                  ; $c6c2 : $85, $03
	lda $29, x                                                  ; $c6c4 : $b5, $29
	.db $ff                                                  ; $c6c6 : $ff
	.db $0f                                                  ; $c6c7 : $0f
	.db $04                                                  ; $c6c8 : $04
	ror $07                                                  ; $c6c9 : $66, $07
	.db $0f                                                  ; $c6cb : $0f
	asl $86                                                  ; $c6cc : $06, $86
	bpl $0f                                                  ; $c6ce : $10, $0f

	php                                                  ; $c6d0 : $08
	eor $0f, x                                                  ; $c6d1 : $55, $0f
	sbc $8f                                                  ; $c6d3 : $e5, $8f
	.db $ff                                                  ; $c6d5 : $ff
	bvs br_03_c68f                                                  ; $c6d6 : $70, $b7

	dex                                                  ; $c6d8 : $ca
	.db $00                                                  ; $c6d9 : $00
	ror $80                                                  ; $c6da : $66, $80
	.db $0f                                                  ; $c6dc : $0f
	.db $04                                                  ; $c6dd : $04
	adc $ab0e, y                                                  ; $c6de : $79, $0e, $ab
	asl $2bee                                                  ; $c6e1 : $0e, $ee, $2b
	jsr $80eb                                                  ; $c6e4 : $20, $eb, $80
	rti                                                  ; $c6e7 : $40


	.db $bb                                                  ; $c6e8 : $bb
	.db $fb                                                  ; $c6e9 : $fb
	.db $00                                                  ; $c6ea : $00
	rti                                                  ; $c6eb : $40


	.db $b7                                                  ; $c6ec : $b7
	.db $cb                                                  ; $c6ed : $cb
	asl $090f                                                  ; $c6ee : $0e, $0f, $09
	.db $4b                                                  ; $c6f1 : $4b
	.db $00                                                  ; $c6f2 : $00
	ror $00, x                                                  ; $c6f3 : $76, $00
	cld                                                  ; $c6f5 : $d8
	.db $00                                                  ; $c6f6 : $00
	.db $6b                                                  ; $c6f7 : $6b
	stx $0673                                                  ; $c6f8 : $8e, $73, $06
	.db $83                                                  ; $c6fb : $83
	asl $c7                                                  ; $c6fc : $06, $c7
	asl $9036                                                  ; $c6fe : $0e, $36, $90
	cmp $06                                                  ; $c701 : $c5, $06
	.db $ff                                                  ; $c703 : $ff
	sty $8f                                                  ; $c704 : $84, $8f
	.db $a7                                                  ; $c706 : $a7
	bit $d3                                                  ; $c707 : $24, $d3
	.db $0f                                                  ; $c709 : $0f

br_03_c70a:
	nop                                                  ; $c70a : $ea
	bit $45                                                  ; $c70b : $24, $45
	lda #$d5                                                  ; $c70d : $a9, $d5
	plp                                                  ; $c70f : $28
	eor $a9                                                  ; $c710 : $45, $a9
	sty $25                                                  ; $c712 : $84, $25
	ldy $8f, x                                                  ; $c714 : $b4, $8f
	ora #$90                                                  ; $c716 : $09, $90

br_03_c718:
	lda $a8, x                                                  ; $c718 : $b5, $a8
	.db $5b                                                  ; $c71a : $5b
	.db $97                                                  ; $c71b : $97
	cmp $b528                                                  ; $c71c : $cd, $28, $b5
	ldy $09                                                  ; $c71f : $a4, $09
	ldy $65                                                  ; $c721 : $a4, $65
	plp                                                  ; $c723 : $28
	.db $92                                                  ; $c724 : $92
	bcc br_03_c70a                                                  ; $c725 : $90, $e3

	.db $83                                                  ; $c727 : $83
	.db $ff                                                  ; $c728 : $ff
	.db $3a                                                  ; $c729 : $3a
	stx $0e5b                                                  ; $c72a : $8e, $5b, $0e
	.db $c3                                                  ; $c72d : $c3
	stx $8eca                                                  ; $c72e : $8e, $ca, $8e
	.db $0b                                                  ; $c731 : $0b
	stx $0e4a                                                  ; $c732 : $8e, $4a, $0e

br_03_c735:
	dec $44c1, x                                                  ; $c735 : $de, $c1, $44
	.db $0f                                                  ; $c738 : $0f
	php                                                  ; $c739 : $08
	eor #$0e                                                  ; $c73a : $49, $0e
	.db $eb                                                  ; $c73c : $eb
	asl $908a                                                  ; $c73d : $0e, $8a, $90
	.db $ab                                                  ; $c740 : $ab
	sta $0f                                                  ; $c741 : $85, $0f
	.db $0c                                                  ; $c743 : $0c
	.db $03                                                  ; $c744 : $03
	.db $0f                                                  ; $c745 : $0f
	rol $402b                                                  ; $c746 : $2e, $2b, $40
	.db $67                                                  ; $c749 : $67
	stx $ff                                                  ; $c74a : $86, $ff
	ora $8f, x                                                  ; $c74c : $15, $8f
	.db $54                                                  ; $c74e : $54
	.db $07                                                  ; $c74f : $07
	tax                                                  ; $c750 : $aa
	.db $83                                                  ; $c751 : $83
	sed                                                  ; $c752 : $f8
	.db $07                                                  ; $c753 : $07
	.db $0f                                                  ; $c754 : $0f
	.db $04                                                  ; $c755 : $04
	.db $14                                                  ; $c756 : $14
	.db $07                                                  ; $c757 : $07
	stx $10, y                                                  ; $c758 : $96, $10
	.db $0f                                                  ; $c75a : $0f
	.db $07                                                  ; $c75b : $07
	sta $0f, x                                                  ; $c75c : $95, $0f
	sta $0ba8, x                                                  ; $c75e : $9d, $a8, $0b
	.db $97                                                  ; $c761 : $97
	ora #$a9                                                  ; $c762 : $09, $a9
	eor $24, x                                                  ; $c764 : $55, $24
	lda #$24                                                  ; $c766 : $a9, $24
	.db $bb                                                  ; $c768 : $bb
	.db $17                                                  ; $c769 : $17
	.db $ff                                                  ; $c76a : $ff
	.db $0f                                                  ; $c76b : $0f
	.db $03                                                  ; $c76c : $03
	ldx $11                                                  ; $c76d : $a6, $11
	.db $a3                                                  ; $c76f : $a3
	bcc br_03_c718                                                  ; $c770 : $90, $a6

	sta ($0f), y                                                  ; $c772 : $91, $0f
	php                                                  ; $c774 : $08
	ldx $11                                                  ; $c775 : $a6, $11
	.db $e3                                                  ; $c777 : $e3
	lda #$0f                                                  ; $c778 : $a9, $0f
	ora $2455                                                  ; $c77a : $0d, $55, $24
	lda #$24                                                  ; $c77d : $a9, $24
	.db $0f                                                  ; $c77f : $0f
	ora ($59), y                                                  ; $c780 : $11, $59
	ora $1ba9, x                                                  ; $c782 : $1d, $a9, $1b
	.db $23                                                  ; $c785 : $23
	.db $8f                                                  ; $c786 : $8f
	ora $9b, x                                                  ; $c787 : $15, $9b
	.db $ff                                                  ; $c789 : $ff
	.db $87                                                  ; $c78a : $87
	sta $9b                                                  ; $c78b : $85, $9b
	ora $18                                                  ; $c78d : $05, $18
	bcc br_03_c735                                                  ; $c78f : $90, $a4

	.db $8f                                                  ; $c791 : $8f
	ror $60c1                                                  ; $c792 : $6e, $c1, $60
	.db $9b                                                  ; $c795 : $9b
	.db $02                                                  ; $c796 : $02
	bne br_03_c7d4                                                  ; $c797 : $d0, $3b

	.db $80                                                  ; $c799 : $80
	clv                                                  ; $c79a : $b8
	.db $03                                                  ; $c79b : $03
	stx $021b                                                  ; $c79c : $8e, $1b, $02
	.db $3b                                                  ; $c79f : $3b
	.db $02                                                  ; $c7a0 : $02
	.db $0f                                                  ; $c7a1 : $0f
	php                                                  ; $c7a2 : $08
	.db $03                                                  ; $c7a3 : $03
	bpl -$09                                                  ; $c7a4 : $10, $f7

	ora $6b                                                  ; $c7a6 : $05, $6b
	sta $ff                                                  ; $c7a8 : $85, $ff
	.db $db                                                  ; $c7aa : $db
	.db $82                                                  ; $c7ab : $82
	.db $f3                                                  ; $c7ac : $f3
	.db $03                                                  ; $c7ad : $03
	bpl -$49                                                  ; $c7ae : $10, $b7

	.db $80                                                  ; $c7b0 : $80
	.db $37                                                  ; $c7b1 : $37
	.db $1a                                                  ; $c7b2 : $1a
	stx $0e4b                                                  ; $c7b3 : $8e, $4b, $0e
	.db $7a                                                  ; $c7b6 : $7a
	asl $0eab                                                  ; $c7b7 : $0e, $ab, $0e
	.db $0f                                                  ; $c7ba : $0f
	ora $f9                                                  ; $c7bb : $05, $f9

Call_03_c7bd:
	asl $bed0                                                  ; $c7bd : $0e, $d0, $be
	rol $62c1                                                  ; $c7c0 : $2e, $c1, $62
	.db $d4                                                  ; $c7c3 : $d4
	.db $8f                                                  ; $c7c4 : $8f
	.db $64                                                  ; $c7c5 : $64
	.db $8f                                                  ; $c7c6 : $8f
	ror $602b, x                                                  ; $c7c7 : $7e, $2b, $60
	.db $ff                                                  ; $c7ca : $ff
	.db $0f                                                  ; $c7cb : $0f
	.db $03                                                  ; $c7cc : $03
	.db $ab                                                  ; $c7cd : $ab
	ora $1b                                                  ; $c7ce : $05, $1b
	sta $a3                                                  ; $c7d0 : $85, $a3
	sta $d7                                                  ; $c7d2 : $85, $d7

br_03_c7d4:
	ora $0f                                                  ; $c7d4 : $05, $0f
	php                                                  ; $c7d6 : $08
	.db $33                                                  ; $c7d7 : $33
	.db $03                                                  ; $c7d8 : $03
	.db $0b                                                  ; $c7d9 : $0b
	sta $fb                                                  ; $c7da : $85, $fb
	sta $8b                                                  ; $c7dc : $85, $8b
	sta $3a                                                  ; $c7de : $85, $3a
	stx $0fff                                                  ; $c7e0 : $8e, $ff, $0f
	.db $02                                                  ; $c7e3 : $02
	ora #$05                                                  ; $c7e4 : $09, $05
	rol $6441, x                                                  ; $c7e6 : $3e, $41, $64
	.db $2b                                                  ; $c7e9 : $2b
	stx $0e58                                                  ; $c7ea : $8e, $58, $0e
	dex                                                  ; $c7ed : $ca
	.db $07                                                  ; $c7ee : $07
	.db $34                                                  ; $c7ef : $34
	.db $87                                                  ; $c7f0 : $87
	.db $ff                                                  ; $c7f1 : $ff
	asl a                                                  ; $c7f2 : $0a
	tax                                                  ; $c7f3 : $aa
	asl $0320, x                                                  ; $c7f4 : $1e, $20, $03
	asl $2722, x                                                  ; $c7f7 : $1e, $22, $27
	rol $4824                                                  ; $c7fa : $2e, $24, $48
	rol $6728                                                  ; $c7fd : $2e, $28, $67
	.db $ff                                                  ; $c800 : $ff
	.db $bb                                                  ; $c801 : $bb
	lda #$1b                                                  ; $c802 : $a9, $1b
	lda #$69                                                  ; $c804 : $a9, $69
	and #$b8                                                  ; $c806 : $29, $b8
	and #$59                                                  ; $c808 : $29, $59
	lda #$8d                                                  ; $c80a : $a9, $8d
	tay                                                  ; $c80c : $a8
	.db $0f                                                  ; $c80d : $0f
	.db $07                                                  ; $c80e : $07
	ora $29, x                                                  ; $c80f : $15, $29
	eor $ac, x                                                  ; $c811 : $55, $ac
	.db $6b                                                  ; $c813 : $6b
	sta $0e                                                  ; $c814 : $85, $0e
	lda $6701                                                  ; $c816 : $ad, $01, $67
	.db $34                                                  ; $c819 : $34
	.db $ff                                                  ; $c81a : $ff
	asl $09a0, x                                                  ; $c81b : $1e, $a0, $09
	asl $6727, x                                                  ; $c81e : $1e, $27, $67
	.db $0f                                                  ; $c821 : $0f
	.db $03                                                  ; $c822 : $03
	asl $6828, x                                                  ; $c823 : $1e, $28, $68
	.db $0f                                                  ; $c826 : $0f
	ora $1e                                                  ; $c827 : $05, $1e
	bit $48                                                  ; $c829 : $24, $48
	asl $6863, x                                                  ; $c82b : $1e, $63, $68
	.db $ff                                                  ; $c82e : $ff
	inc $21ad                                                  ; $c82f : $ee, $ad, $21
	rol $87                                                  ; $c832 : $26, $87
	.db $f3                                                  ; $c834 : $f3
	asl $8766                                                  ; $c835 : $0e, $66, $87
	.db $cb                                                  ; $c838 : $cb
	.db $00                                                  ; $c839 : $00
	adc $87                                                  ; $c83a : $65, $87
	.db $0f                                                  ; $c83c : $0f
	asl $06                                                  ; $c83d : $06, $06
	asl $0797                                                  ; $c83f : $0e, $97, $07
	.db $cb                                                  ; $c842 : $cb
	.db $00                                                  ; $c843 : $00
	adc $87, x                                                  ; $c844 : $75, $87
	.db $d3                                                  ; $c846 : $d3
	.db $27                                                  ; $c847 : $27
	cmp $0f27, y                                                  ; $c848 : $d9, $27, $0f
	ora #$77                                                  ; $c84b : $09, $77
	.db $1f                                                  ; $c84d : $1f
	lsr $87                                                  ; $c84e : $46, $87
	lda ($0f), y                                                  ; $c850 : $b1, $0f
	.db $ff                                                  ; $c852 : $ff
	.db $9b                                                  ; $c853 : $9b
	.db $87                                                  ; $c854 : $87
	ora $32                                                  ; $c855 : $05, $32
	asl $33                                                  ; $c857 : $06, $33
	.db $07                                                  ; $c859 : $07
	.db $34                                                  ; $c85a : $34
	inc $0e0a                                                  ; $c85b : $ee, $0a, $0e
	stx $28                                                  ; $c85e : $86, $28
	asl $0a3e                                                  ; $c860 : $0e, $3e, $0a
	ror $8b02                                                  ; $c863 : $6e, $02, $8b
	asl $97.w                                                  ; $c866 : $0e, $97, $00
	.db $9e                                                  ; $c869 : $9e
	asl a                                                  ; $c86a : $0a
	dec $e806                                                  ; $c86b : $ce, $06, $e8
	asl $0afe                                                  ; $c86e : $0e, $fe, $0a
	rol $6e86                                                  ; $c871 : $2e, $86, $6e
	asl a                                                  ; $c874 : $0a
	stx $e408                                                  ; $c875 : $8e, $08, $e4
	asl $821e                                                  ; $c878 : $0e, $1e, $82
	txa                                                  ; $c87b : $8a
	asl $0a8e                                                  ; $c87c : $0e, $8e, $0a
	inc $1a02, x                                                  ; $c87f : $fe, $02, $1a
	cpx #$29                                                  ; $c882 : $e0, $29
	adc ($2e, x)                                                  ; $c884 : $61, $2e
	asl $3e                                                  ; $c886 : $06, $3e
	ora #$56                                                  ; $c888 : $09, $56
	rts                                                  ; $c88a : $60


	adc $61                                                  ; $c88b : $65, $61
	ror $830c                                                  ; $c88d : $6e, $0c, $83
	rts                                                  ; $c890 : $60


	ror $bb8a, x                                                  ; $c891 : $7e, $8a, $bb
	adc ($f9, x)                                                  ; $c894 : $61, $f9
	.db $63                                                  ; $c896 : $63
	.db $27                                                  ; $c897 : $27
	sbc $88                                                  ; $c898 : $e5, $88
	.db $64                                                  ; $c89a : $64
	.db $eb                                                  ; $c89b : $eb
	adc ($fe, x)                                                  ; $c89c : $61, $fe
	ora $68                                                  ; $c89e : $05, $68
	bcc br_03_c8ac                                                  ; $c8a0 : $90, $0a

br_03_c8a2:
	bcc br_03_c8a2                                                  ; $c8a2 : $90, $fe

	.db $02                                                  ; $c8a4 : $02
	.db $3a                                                  ; $c8a5 : $3a
	bcc br_03_c8e6                                                  ; $c8a6 : $90, $3e

	asl a                                                  ; $c8a8 : $0a
	ldx $da02                                                  ; $c8a9 : $ae, $02, $da

br_03_c8ac:
	rts                                                  ; $c8ac : $60


	sbc #$61                                                  ; $c8ad : $e9, $61
	sed                                                  ; $c8af : $f8
	.db $62                                                  ; $c8b0 : $62
	inc $0d0a, x                                                  ; $c8b1 : $fe, $0a, $0d
	cpy $a1                                                  ; $c8b4 : $c4, $a1
	.db $62                                                  ; $c8b6 : $62
	lda ($62), y                                                  ; $c8b7 : $b1, $62
	cmp $ce43                                                  ; $c8b9 : $cd, $43, $ce
	ora #$de                                                  ; $c8bc : $09, $de
	.db $0b                                                  ; $c8be : $0b
	cmp $fe42, x                                                  ; $c8bf : $dd, $42, $fe
	.db $02                                                  ; $c8c2 : $02
	eor $fdc7, x                                                  ; $c8c3 : $5d, $c7, $fd
	.db $9b                                                  ; $c8c6 : $9b
	.db $07                                                  ; $c8c7 : $07
	ora $32                                                  ; $c8c8 : $05, $32
	asl $33                                                  ; $c8ca : $06, $33
	.db $07                                                  ; $c8cc : $07
	.db $33                                                  ; $c8cd : $33
	rol $410a, x                                                  ; $c8ce : $3e, $0a, $41
	.db $3b                                                  ; $c8d1 : $3b
	.db $42                                                  ; $c8d2 : $42
	.db $3b                                                  ; $c8d3 : $3b
	cli                                                  ; $c8d4 : $58
	.db $64                                                  ; $c8d5 : $64
	.db $7a                                                  ; $c8d6 : $7a
	.db $62                                                  ; $c8d7 : $62
	iny                                                  ; $c8d8 : $c8
	and ($18), y                                                  ; $c8d9 : $31, $18
	cpx $39                                                  ; $c8db : $e4, $39
	.db $73                                                  ; $c8dd : $73
	lsr $6609, x                                                  ; $c8de : $5e, $09, $66
	.db $3c                                                  ; $c8e1 : $3c
	asl $2882                                                  ; $c8e2 : $0e, $82, $28
	.db $07                                                  ; $c8e5 : $07

br_03_c8e6:
	rol $0e, x                                                  ; $c8e6 : $36, $0e
	rol $ae0a, x                                                  ; $c8e8 : $3e, $0a, $ae
	.db $02                                                  ; $c8eb : $02
	.db $d7                                                  ; $c8ec : $d7
	asl $0cfe                                                  ; $c8ed : $0e, $fe, $0c
	inc $118a, x                                                  ; $c8f0 : $fe, $8a, $11
	sbc $21                                                  ; $c8f3 : $e5, $21
	adc $31                                                  ; $c8f5 : $65, $31
	adc $4e                                                  ; $c8f7 : $65, $4e
	.db $0c                                                  ; $c8f9 : $0c
	inc $1602, x                                                  ; $c8fa : $fe, $02, $16
	stx $0e2e                                                  ; $c8fd : $8e, $2e, $0e
	inc $1802, x                                                  ; $c900 : $fe, $02, $18
	.db $fa                                                  ; $c903 : $fa
	rol $fe0e, x                                                  ; $c904 : $3e, $0e, $fe
	.db $02                                                  ; $c907 : $02
	asl $8e, x                                                  ; $c908 : $16, $8e
	rol $fe0e                                                  ; $c90a : $2e, $0e, $fe
	.db $02                                                  ; $c90d : $02
	clc                                                  ; $c90e : $18
	.db $fa                                                  ; $c90f : $fa
	rol $fe0e, x                                                  ; $c910 : $3e, $0e, $fe
	.db $02                                                  ; $c913 : $02
	asl $8e, x                                                  ; $c914 : $16, $8e
	rol $fe0e                                                  ; $c916 : $2e, $0e, $fe
	.db $02                                                  ; $c919 : $02
	clc                                                  ; $c91a : $18
	.db $fa                                                  ; $c91b : $fa
	rol $fe0e, x                                                  ; $c91c : $3e, $0e, $fe
	.db $02                                                  ; $c91f : $02
	asl $8e, x                                                  ; $c920 : $16, $8e
	rol $fe0e                                                  ; $c922 : $2e, $0e, $fe
	.db $02                                                  ; $c925 : $02
	clc                                                  ; $c926 : $18
	.db $fa                                                  ; $c927 : $fa
	lsr $6e0a, x                                                  ; $c928 : $5e, $0a, $6e
	.db $02                                                  ; $c92b : $02
	ror $b70a, x                                                  ; $c92c : $7e, $0a, $b7
	asl $07ee                                                  ; $c92f : $0e, $ee, $07
	inc $0d8a, x                                                  ; $c932 : $fe, $8a, $0d
	cpy $cd                                                  ; $c935 : $c4, $cd
	.db $43                                                  ; $c937 : $43
	dec $dd09                                                  ; $c938 : $ce, $09, $dd
	.db $42                                                  ; $c93b : $42
	dec $fe0b, x                                                  ; $c93c : $de, $0b, $fe
	.db $02                                                  ; $c93f : $02
	eor $fdc7, x                                                  ; $c940 : $5d, $c7, $fd
	tya                                                  ; $c943 : $98
	.db $07                                                  ; $c944 : $07
	ora $35                                                  ; $c945 : $05, $35
	asl $3d                                                  ; $c947 : $06, $3d
	.db $07                                                  ; $c949 : $07
	and $06be, x                                                  ; $c94a : $3d, $be, $06
	dec $f30c, x                                                  ; $c94d : $de, $0c, $f3
	and $8e03, x                                                  ; $c950 : $3d, $03, $8e
	.db $63                                                  ; $c953 : $63
	asl $436e                                                  ; $c954 : $0e, $6e, $43
	dec $e10a                                                  ; $c957 : $ce, $0a, $e1
	.db $67                                                  ; $c95a : $67
	sbc ($67), y                                                  ; $c95b : $f1, $67
	ora ($e7, x)                                                  ; $c95d : $01, $e7
	ora ($67), y                                                  ; $c95f : $11, $67
	asl $2805, x                                                  ; $c961 : $1e, $05, $28
	and $406e, y                                                  ; $c964 : $39, $6e, $40
	ldx $c701, y                                                  ; $c967 : $be, $01, $c7
	asl $db                                                  ; $c96a : $06, $db
	asl $de.w                                                  ; $c96c : $0e, $de, $00
	.db $1f                                                  ; $c96f : $1f
	.db $80                                                  ; $c970 : $80
	.db $6f                                                  ; $c971 : $6f
	.db $00                                                  ; $c972 : $00
	.db $bf                                                  ; $c973 : $bf
	.db $00                                                  ; $c974 : $00
	.db $0f                                                  ; $c975 : $0f
	.db $80                                                  ; $c976 : $80
	.db $5f                                                  ; $c977 : $5f
	.db $00                                                  ; $c978 : $00
	ror $a805, x                                                  ; $c979 : $7e, $05, $a8
	.db $37                                                  ; $c97c : $37
	inc $2402, x                                                  ; $c97d : $fe, $02, $24
	stx $3034                                                  ; $c980 : $8e, $34, $30
	rol $4e0c, x                                                  ; $c983 : $3e, $0c, $4e
	.db $43                                                  ; $c986 : $43
	ldx $be0a                                                  ; $c987 : $ae, $0a, $be
	.db $0c                                                  ; $c98a : $0c
	inc $fe0a                                                  ; $c98b : $ee, $0a, $fe
	.db $0c                                                  ; $c98e : $0c
	rol $3e8a                                                  ; $c98f : $2e, $8a, $3e
	.db $0c                                                  ; $c992 : $0c
	ror $8e02, x                                                  ; $c993 : $7e, $02, $8e
	asl $3698                                                  ; $c996 : $0e, $98, $36
	lda $0834, y                                                  ; $c999 : $b9, $34, $08
	.db $bf                                                  ; $c99c : $bf
	ora #$3f                                                  ; $c99d : $09, $3f
	asl $2e82                                                  ; $c99f : $0e, $82, $2e
	stx $4e                                                  ; $c9a2 : $86, $4e
	.db $0c                                                  ; $c9a4 : $0c
	.db $9e                                                  ; $c9a5 : $9e
	ora #$a6                                                  ; $c9a6 : $09, $a6
	rts                                                  ; $c9a8 : $60


	cmp ($62, x)                                                  ; $c9a9 : $c1, $62
	cpy $0e                                                  ; $c9ab : $c4, $0e
	inc $0e0c                                                  ; $c9ad : $ee, $0c, $0e
	stx $5e                                                  ; $c9b0 : $86, $5e
	.db $0c                                                  ; $c9b2 : $0c
	ror $8609, x                                                  ; $c9b3 : $7e, $09, $86
	rts                                                  ; $c9b6 : $60


	lda ($62, x)                                                  ; $c9b7 : $a1, $62
	ldy $0e                                                  ; $c9b9 : $a4, $0e
	dec $60                                                  ; $c9bb : $c6, $60
	dec $fe0c                                                  ; $c9bd : $ce, $0c, $fe
	asl a                                                  ; $c9c0 : $0a
	plp                                                  ; $c9c1 : $28
	ldy $a6, x                                                  ; $c9c2 : $b4, $a6
	and ($e8), y                                                  ; $c9c4 : $31, $e8
	.db $34                                                  ; $c9c6 : $34
	.db $8b                                                  ; $c9c7 : $8b
	.db $b2                                                  ; $c9c8 : $b2
	.db $9b                                                  ; $c9c9 : $9b
	asl $07fe                                                  ; $c9ca : $0e, $fe, $07
	inc $0d8a, x                                                  ; $c9cd : $fe, $8a, $0d
	cpy $cd                                                  ; $c9d0 : $c4, $cd
	.db $43                                                  ; $c9d2 : $43
	dec $dd09                                                  ; $c9d3 : $ce, $09, $dd
	.db $42                                                  ; $c9d6 : $42
	dec $fe0b, x                                                  ; $c9d7 : $de, $0b, $fe
	.db $02                                                  ; $c9da : $02
	eor $fdc7, x                                                  ; $c9db : $5d, $c7, $fd
	.db $5b                                                  ; $c9de : $5b
	.db $03                                                  ; $c9df : $03
	ora $34                                                  ; $c9e0 : $05, $34
	asl $35                                                  ; $c9e2 : $06, $35
	and $6e71, y                                                  ; $c9e4 : $39, $71, $6e
	.db $02                                                  ; $c9e7 : $02
	ldx $fe0a                                                  ; $c9e8 : $ae, $0a, $fe
	ora $17                                                  ; $c9eb : $05, $17
	stx $0e97                                                  ; $c9ed : $8e, $97, $0e
	.db $9e                                                  ; $c9f0 : $9e
	.db $02                                                  ; $c9f1 : $02
	ldx $06                                                  ; $c9f2 : $a6, $06
	.db $fa                                                  ; $c9f4 : $fa

br_03_c9f5:
	bmi br_03_c9f5                                                  ; $c9f5 : $30, $fe

	asl a                                                  ; $c9f7 : $0a
	lsr $5782                                                  ; $c9f8 : $4e, $82, $57
	asl $6258                                                  ; $c9fb : $0e, $58, $62
	pla                                                  ; $c9fe : $68
	.db $62                                                  ; $c9ff : $62
	adc $8a61, y                                                  ; $ca00 : $79, $61, $8a
	rts                                                  ; $ca03 : $60


	stx $f50a                                                  ; $ca04 : $8e, $0a, $f5
	and ($f9), y                                                  ; $ca07 : $31, $f9
	.db $73                                                  ; $ca09 : $73
	and $b5f3, y                                                  ; $ca0a : $39, $f3, $b5
	adc ($b7), y                                                  ; $ca0d : $71, $b7
	and ($4d), y                                                  ; $ca0f : $31, $4d
	iny                                                  ; $ca11 : $c8
	txa                                                  ; $ca12 : $8a
	.db $62                                                  ; $ca13 : $62
	txs                                                  ; $ca14 : $9a
	.db $62                                                  ; $ca15 : $62
	ldx $bb05                                                  ; $ca16 : $ae, $05, $bb
	asl $4acd                                                  ; $ca19 : $0e, $cd, $4a
	inc $7782, x                                                  ; $ca1c : $fe, $82, $77
	.db $fb                                                  ; $ca1f : $fb
	dec $4e0f, x                                                  ; $ca20 : $de, $0f, $4e
	.db $82                                                  ; $ca23 : $82
	adc $3947                                                  ; $ca24 : $6d, $47, $39
	.db $f3                                                  ; $ca27 : $f3
	.db $0c                                                  ; $ca28 : $0c
	nop                                                  ; $ca29 : $ea
	php                                                  ; $ca2a : $08
	.db $3f                                                  ; $ca2b : $3f
	.db $b3                                                  ; $ca2c : $b3
	.db $00                                                  ; $ca2d : $00
	cpy $f963                                                  ; $ca2e : $cc, $63, $f9
	bmi $69                                                  ; $ca31 : $30, $69

	sbc $60ea, y                                                  ; $ca33 : $f9, $ea, $60
	sbc $fe61, y                                                  ; $ca36 : $f9, $61, $fe
	.db $07                                                  ; $ca39 : $07
	dec $e484, x                                                  ; $ca3a : $de, $84, $e4
	.db $62                                                  ; $ca3d : $62
	sbc #$61                                                  ; $ca3e : $e9, $61
	.db $f4                                                  ; $ca40 : $f4
	.db $62                                                  ; $ca41 : $62
	.db $fa                                                  ; $ca42 : $fa
	rts                                                  ; $ca43 : $60


	.db $04                                                  ; $ca44 : $04
	.db $e2                                                  ; $ca45 : $e2
	.db $14                                                  ; $ca46 : $14
	.db $62                                                  ; $ca47 : $62
	bit $62                                                  ; $ca48 : $24, $62
	.db $34                                                  ; $ca4a : $34
	.db $62                                                  ; $ca4b : $62
	rol $7e0a, x                                                  ; $ca4c : $3e, $0a, $7e
	.db $0c                                                  ; $ca4f : $0c
	ror $8e8a, x                                                  ; $ca50 : $7e, $8a, $8e
	php                                                  ; $ca53 : $08
	sty $36, x                                                  ; $ca54 : $94, $36
	inc $0d0a, x                                                  ; $ca56 : $fe, $0a, $0d
	cpy $61                                                  ; $ca59 : $c4, $61
	.db $64                                                  ; $ca5b : $64
	adc ($64), y                                                  ; $ca5c : $71, $64
	sta ($64, x)                                                  ; $ca5e : $81, $64
	cmp $ce43                                                  ; $ca60 : $cd, $43, $ce
	ora #$dd                                                  ; $ca63 : $09, $dd
	.db $42                                                  ; $ca65 : $42
	dec $fe0b, x                                                  ; $ca66 : $de, $0b, $fe
	.db $02                                                  ; $ca69 : $02
	eor $fdc7, x                                                  ; $ca6a : $5d, $c7, $fd
	.db $52                                                  ; $ca6d : $52
	adc ($0f), y                                                  ; $ca6e : $71, $0f
	jsr $706e                                                  ; $ca70 : $20, $6e, $70
	.db $e3                                                  ; $ca73 : $e3
	.db $64                                                  ; $ca74 : $64
	.db $fc                                                  ; $ca75 : $fc
	adc ($fc, x)                                                  ; $ca76 : $61, $fc
	adc ($13), y                                                  ; $ca78 : $71, $13
	stx $2c                                                  ; $ca7a : $86, $2c
	adc ($2c, x)                                                  ; $ca7c : $61, $2c
	adc ($43), y                                                  ; $ca7e : $71, $43
	.db $64                                                  ; $ca80 : $64
	.db $b2                                                  ; $ca81 : $b2
	.db $22                                                  ; $ca82 : $22
	lda $62, x                                                  ; $ca83 : $b5, $62
	.db $c7                                                  ; $ca85 : $c7
	plp                                                  ; $ca86 : $28
	.db $22                                                  ; $ca87 : $22
	ldx #$52                                                  ; $ca88 : $a2, $52
	ora #$56                                                  ; $ca8a : $09, $56
	adc ($6c, x)                                                  ; $ca8c : $61, $6c
	.db $03                                                  ; $ca8e : $03
	.db $db                                                  ; $ca8f : $db
	adc ($fc), y                                                  ; $ca90 : $71, $fc
	.db $03                                                  ; $ca92 : $03
	.db $f3                                                  ; $ca93 : $f3
	jsr $a403                                                  ; $ca94 : $20, $03, $a4
	.db $0f                                                  ; $ca97 : $0f
	adc ($40), y                                                  ; $ca98 : $71, $40
	.db $0c                                                  ; $ca9a : $0c
	sty $9c74                                                  ; $ca9b : $8c, $74, $9c
	ror $d7                                                  ; $ca9e : $66, $d7
	ora ($ec, x)                                                  ; $caa0 : $01, $ec
	adc ($89), y                                                  ; $caa2 : $71, $89
	sbc ($b6, x)                                                  ; $caa4 : $e1, $b6
	adc ($b9, x)                                                  ; $caa6 : $61, $b9
	rol a                                                  ; $caa8 : $2a
	.db $c7                                                  ; $caa9 : $c7
	rol $f4                                                  ; $caaa : $26, $f4
	.db $23                                                  ; $caac : $23
	.db $67                                                  ; $caad : $67
	.db $e2                                                  ; $caae : $e2
	inx                                                  ; $caaf : $e8
	.db $f2                                                  ; $cab0 : $f2
	sei                                                  ; $cab1 : $78
	.db $82                                                  ; $cab2 : $82
	dey                                                  ; $cab3 : $88
	ora ($98, x)                                                  ; $cab4 : $01, $98
	.db $02                                                  ; $cab6 : $02
	tay                                                  ; $cab7 : $a8
	.db $02                                                  ; $cab8 : $02
	clv                                                  ; $cab9 : $b8
	.db $02                                                  ; $caba : $02
	.db $03                                                  ; $cabb : $03
	ldx $07                                                  ; $cabc : $a6, $07
	rol $21                                                  ; $cabe : $26, $21
	adc $714b, y                                                  ; $cac0 : $79, $4b, $71
	.db $cf                                                  ; $cac3 : $cf
	.db $33                                                  ; $cac4 : $33
	asl $e4                                                  ; $cac5 : $06, $e4
	asl $2a, x                                                  ; $cac7 : $16, $2a
	and $5871, y                                                  ; $cac9 : $39, $71, $58
	eor $5a                                                  ; $cacc : $45, $5a
	eor $c6                                                  ; $cace : $45, $c6
	.db $07                                                  ; $cad0 : $07
	.db $dc                                                  ; $cad1 : $dc
	.db $04                                                  ; $cad2 : $04
	.db $3f                                                  ; $cad3 : $3f
	.db $e7                                                  ; $cad4 : $e7
	.db $3b                                                  ; $cad5 : $3b
	adc ($8c), y                                                  ; $cad6 : $71, $8c
	adc ($ac), y                                                  ; $cad8 : $71, $ac
	ora ($e7, x)                                                  ; $cada : $01, $e7
	.db $63                                                  ; $cadc : $63
	and $638f, y                                                  ; $cadd : $39, $8f, $63
	jsr $0b65                                                  ; $cae0 : $20, $65, $0b
	pla                                                  ; $cae3 : $68
	.db $62                                                  ; $cae4 : $62
	sty $0c00                                                  ; $cae5 : $8c, $00, $0c
	sta ($29, x)                                                  ; $cae8 : $81, $29
	.db $63                                                  ; $caea : $63
	.db $3c                                                  ; $caeb : $3c
	ora ($57, x)                                                  ; $caec : $01, $57
	adc $6c                                                  ; $caee : $65, $6c
	ora ($85, x)                                                  ; $caf0 : $01, $85
	.db $67                                                  ; $caf2 : $67
	.db $9c                                                  ; $caf3 : $9c
	.db $04                                                  ; $caf4 : $04
	ora $5fc1, x                                                  ; $caf5 : $1d, $c1, $5f
	rol $3d                                                  ; $caf8 : $26, $3d
	.db $c7                                                  ; $cafa : $c7
	sbc $5050, x                                                  ; $cafb : $fd, $50, $50
	.db $0b                                                  ; $cafe : $0b
	.db $1f                                                  ; $caff : $1f
	.db $0f                                                  ; $cb00 : $0f
	rol $19                                                  ; $cb01 : $26, $19
	stx $84, y                                                  ; $cb03 : $96, $84
	.db $43                                                  ; $cb05 : $43
	.db $b7                                                  ; $cb06 : $b7
	.db $1f                                                  ; $cb07 : $1f
	eor $6dcc, x                                                  ; $cb08 : $5d, $cc, $6d
	pha                                                  ; $cb0b : $48
	cpx #$42                                                  ; $cb0c : $e0, $42
	.db $e3                                                  ; $cb0e : $e3
	.db $12                                                  ; $cb0f : $12
	and $569c, y                                                  ; $cb10 : $39, $9c, $56
	.db $43                                                  ; $cb13 : $43
	.db $47                                                  ; $cb14 : $47
	.db $9b                                                  ; $cb15 : $9b
	ldy $12                                                  ; $cb16 : $a4, $12
	cmp ($06, x)                                                  ; $cb18 : $c1, $06
	sbc $f44d                                                  ; $cb1a : $ed, $4d, $f4
	.db $42                                                  ; $cb1d : $42
	.db $1b                                                  ; $cb1e : $1b
	tya                                                  ; $cb1f : $98
	.db $b7                                                  ; $cb20 : $b7
	.db $13                                                  ; $cb21 : $13
	.db $02                                                  ; $cb22 : $02
	.db $c2                                                  ; $cb23 : $c2
	.db $03                                                  ; $cb24 : $03
	.db $12                                                  ; $cb25 : $12
	.db $47                                                  ; $cb26 : $47
	.db $1f                                                  ; $cb27 : $1f
	lda $6348                                                  ; $cb28 : $ad, $48, $63
	.db $9c                                                  ; $cb2b : $9c
	.db $82                                                  ; $cb2c : $82
	pha                                                  ; $cb2d : $48
	ror $93, x                                                  ; $cb2e : $76, $93
	php                                                  ; $cb30 : $08
	sty $8e, x                                                  ; $cb31 : $94, $8e
	ora ($b0), y                                                  ; $cb33 : $11, $b0
	.db $03                                                  ; $cb35 : $03
	cmp #$0f                                                  ; $cb36 : $c9, $0f
	ora $2dc1, x                                                  ; $cb38 : $1d, $c1, $2d
	lsr a                                                  ; $cb3b : $4a

br_03_cb3c:
	lsr $6f42                                                  ; $cb3c : $4e, $42, $6f
	jsr $0e0d                                                  ; $cb3f : $20, $0d, $0e
	asl $3940                                                  ; $cb42 : $0e, $40, $39
	adc ($7f), y                                                  ; $cb45 : $71, $7f
	.db $37                                                  ; $cb47 : $37
	.db $f2                                                  ; $cb48 : $f2
	pla                                                  ; $cb49 : $68
	ora ($e9, x)                                                  ; $cb4a : $01, $e9
	ora ($39), y                                                  ; $cb4c : $11, $39
	pla                                                  ; $cb4e : $68
	.db $7a                                                  ; $cb4f : $7a
	dec $6d1f, x                                                  ; $cb50 : $de, $1f, $6d
	cmp $fd                                                  ; $cb53 : $c5, $fd
	.db $52                                                  ; $cb55 : $52
	and ($0f, x)                                                  ; $cb56 : $21, $0f
	jsr $606e                                                  ; $cb58 : $20, $6e, $60
	jmp ($caf6)                                                  ; $cb5b : $6c, $f6, $ca


	bmi br_03_cb3c                                                  ; $cb5e : $30, $dc

	.db $02                                                  ; $cb60 : $02
	php                                                  ; $cb61 : $08
	.db $f2                                                  ; $cb62 : $f2
	.db $37                                                  ; $cb63 : $37
	.db $04                                                  ; $cb64 : $04
	lsr $74, x                                                  ; $cb65 : $56, $74
	.db $7c                                                  ; $cb67 : $7c
	.db $00                                                  ; $cb68 : $00
	.db $dc                                                  ; $cb69 : $dc
	ora ($e7, x)                                                  ; $cb6a : $01, $e7
	and $47                                                  ; $cb6c : $25, $47
	.db $8b                                                  ; $cb6e : $8b
	eor #$20                                                  ; $cb6f : $49, $20
	jmp ($9602)                                                  ; $cb71 : $6c, $02, $96


	.db $74                                                  ; $cb74 : $74
	asl $82                                                  ; $cb75 : $06, $82
	rol $02, x                                                  ; $cb77 : $36, $02
	ror $00                                                  ; $cb79 : $66, $00
	.db $a7                                                  ; $cb7b : $a7
	.db $22                                                  ; $cb7c : $22
	.db $dc                                                  ; $cb7d : $dc
	.db $02                                                  ; $cb7e : $02
	asl a                                                  ; $cb7f : $0a
	cpx #$63                                                  ; $cb80 : $e0, $63
	.db $22                                                  ; $cb82 : $22
	sei                                                  ; $cb83 : $78
	.db $72                                                  ; $cb84 : $72
	.db $93                                                  ; $cb85 : $93
	ora #$97                                                  ; $cb86 : $09, $97
	.db $03                                                  ; $cb88 : $03
	.db $a3                                                  ; $cb89 : $a3
	and $a7                                                  ; $cb8a : $25, $a7
	.db $03                                                  ; $cb8c : $03
	ldx $24, y                                                  ; $cb8d : $b6, $24
	.db $03                                                  ; $cb8f : $03
	ldx #$5c                                                  ; $cb90 : $a2, $5c
	adc $65, x                                                  ; $cb92 : $75, $65
	adc ($7c), y                                                  ; $cb94 : $71, $7c
	.db $00                                                  ; $cb96 : $00
	.db $9c                                                  ; $cb97 : $9c
	.db $00                                                  ; $cb98 : $00
	.db $63                                                  ; $cb99 : $63
	ldx #$67                                                  ; $cb9a : $a2, $67
	jsr $0377                                                  ; $cb9c : $20, $77, $03
	.db $87                                                  ; $cb9f : $87
	jsr $0a93                                                  ; $cba0 : $20, $93, $0a
	.db $97                                                  ; $cba3 : $97
	.db $03                                                  ; $cba4 : $03
	.db $a3                                                  ; $cba5 : $a3
	.db $22                                                  ; $cba6 : $22
	.db $a7                                                  ; $cba7 : $a7
	jsr $03b7                                                  ; $cba8 : $20, $b7, $03
	ldy $c700, x                                                  ; $cbab : $bc, $00, $c7
	jsr $00dc                                                  ; $cbae : $20, $dc, $00
	.db $fc                                                  ; $cbb1 : $fc
	ora ($19, x)                                                  ; $cbb2 : $01, $19
	.db $8f                                                  ; $cbb4 : $8f
	asl $4620, x                                                  ; $cbb5 : $1e, $20, $46
	.db $22                                                  ; $cbb8 : $22
	jmp $6361                                                  ; $cbb9 : $4c, $61, $63


	.db $00                                                  ; $cbbc : $00
	stx $d721                                                  ; $cbbd : $8e, $21, $d7
	.db $73                                                  ; $cbc0 : $73
	lsr $a6                                                  ; $cbc1 : $46, $a6
	jmp $6862                                                  ; $cbc3 : $4c, $62, $68


	.db $62                                                  ; $cbc6 : $62
	.db $73                                                  ; $cbc7 : $73
	ora ($8c, x)                                                  ; $cbc8 : $01, $8c
	.db $62                                                  ; $cbca : $62
	cld                                                  ; $cbcb : $d8
	.db $62                                                  ; $cbcc : $62
	.db $43                                                  ; $cbcd : $43
	lda #$c7                                                  ; $cbce : $a9, $c7
	.db $73                                                  ; $cbd0 : $73
	cpx $5706                                                  ; $cbd1 : $ec, $06, $57
	.db $f3                                                  ; $cbd4 : $f3
	.db $7c                                                  ; $cbd5 : $7c
	.db $00                                                  ; $cbd6 : $00
	lda $65, x                                                  ; $cbd7 : $b5, $65
	cmp $65                                                  ; $cbd9 : $c5, $65
	.db $dc                                                  ; $cbdb : $dc
	.db $00                                                  ; $cbdc : $00
	.db $e3                                                  ; $cbdd : $e3
	.db $67                                                  ; $cbde : $67
	adc $bfc1, x                                                  ; $cbdf : $7d, $c1, $bf
	rol $ad                                                  ; $cbe2 : $26, $ad
	.db $c7                                                  ; $cbe4 : $c7
	sbc $1090, x                                                  ; $cbe5 : $fd, $90, $10
	.db $0b                                                  ; $cbe8 : $0b
	.db $1b                                                  ; $cbe9 : $1b
	.db $0f                                                  ; $cbea : $0f
	rol $07                                                  ; $cbeb : $26, $07
	sty $bc, x                                                  ; $cbed : $94, $bc
	.db $14                                                  ; $cbef : $14
	.db $bf                                                  ; $cbf0 : $bf
	.db $13                                                  ; $cbf1 : $13
	.db $c7                                                  ; $cbf2 : $c7
	rti                                                  ; $cbf3 : $40


	.db $ff                                                  ; $cbf4 : $ff
	asl $d1, x                                                  ; $cbf5 : $16, $d1
	.db $80                                                  ; $cbf7 : $80
	.db $c3                                                  ; $cbf8 : $c3
	sty $cb, x                                                  ; $cbf9 : $94, $cb
	.db $17                                                  ; $cbfb : $17
	.db $c2                                                  ; $cbfc : $c2
	.db $44                                                  ; $cbfd : $44
	and #$8f                                                  ; $cbfe : $29, $8f
	.db $77                                                  ; $cc00 : $77
	and ($0b), y                                                  ; $cc01 : $31, $0b
	stx $76, y                                                  ; $cc03 : $96, $76
	.db $32                                                  ; $cc05 : $32
	.db $c7                                                  ; $cc06 : $c7
	adc $13, x                                                  ; $cc07 : $75, $13
	.db $f7                                                  ; $cc09 : $f7
	.db $1b                                                  ; $cc0a : $1b
	adc ($2b, x)                                                  ; $cc0b : $61, $2b
	adc ($4b, x)                                                  ; $cc0d : $61, $4b
	.db $12                                                  ; $cc0f : $12
	eor $3b0f, y                                                  ; $cc10 : $59, $0f, $3b
	bcs br_03_cc4f                                                  ; $cc13 : $b0, $3a

	rti                                                  ; $cc15 : $40


	.db $43                                                  ; $cc16 : $43
	.db $12                                                  ; $cc17 : $12
	.db $7a                                                  ; $cc18 : $7a
	rti                                                  ; $cc19 : $40


	.db $7b                                                  ; $cc1a : $7b
	bmi -$4b                                                  ; $cc1b : $30, $b5

	eor ($b6, x)                                                  ; $cc1d : $41, $b6
	jsr $07c6                                                  ; $cc1f : $20, $c6, $07
	.db $f3                                                  ; $cc22 : $f3
	.db $13                                                  ; $cc23 : $13
	.db $03                                                  ; $cc24 : $03
	.db $92                                                  ; $cc25 : $92
	.db $6b                                                  ; $cc26 : $6b
	.db $12                                                  ; $cc27 : $12
	adc $cc0f, y                                                  ; $cc28 : $79, $0f, $cc
	ora $cf, x                                                  ; $cc2b : $15, $cf
	ora ($1f), y                                                  ; $cc2d : $11, $1f
	sta $c3, x                                                  ; $cc2f : $95, $c3
	.db $14                                                  ; $cc31 : $14
	.db $b3                                                  ; $cc32 : $b3
	sta $a3, x                                                  ; $cc33 : $95, $a3
	sta $4d, x                                                  ; $cc35 : $95, $4d
	dex                                                  ; $cc37 : $ca
	.db $6b                                                  ; $cc38 : $6b
	adc ($7e, x)                                                  ; $cc39 : $61, $7e
	ora ($8d), y                                                  ; $cc3b : $11, $8d
	eor ($be, x)                                                  ; $cc3d : $41, $be
	.db $42                                                  ; $cc3f : $42
	.db $df                                                  ; $cc40 : $df
	jsr Call_03_c7bd                                                  ; $cc41 : $20, $bd, $c7
	sbc $3152, x                                                  ; $cc44 : $fd, $52, $31
	.db $0f                                                  ; $cc47 : $0f
	jsr $746e                                                  ; $cc48 : $20, $6e, $74
	ora $0302                                                  ; $cc4b : $0d, $02, $03
	.db $33                                                  ; $cc4e : $33

br_03_cc4f:
	.db $1f                                                  ; $cc4f : $1f
	.db $72                                                  ; $cc50 : $72
	and $6571, y                                                  ; $cc51 : $39, $71, $65
	.db $04                                                  ; $cc54 : $04
	jmp ($7770)                                                  ; $cc55 : $6c, $70, $77


	ora ($84, x)                                                  ; $cc58 : $01, $84
	.db $72                                                  ; $cc5a : $72
	sty $b372                                                  ; $cc5b : $8c, $72, $b3
	.db $34                                                  ; $cc5e : $34
	cpx $ef01                                                  ; $cc5f : $ec, $01, $ef
	.db $72                                                  ; $cc62 : $72
	ora $ac04                                                  ; $cc63 : $0d, $04, $ac
	.db $67                                                  ; $cc66 : $67
	cpy $cf01                                                  ; $cc67 : $cc, $01, $cf
	adc ($e7), y                                                  ; $cc6a : $71, $e7
	.db $22                                                  ; $cc6c : $22
	.db $17                                                  ; $cc6d : $17
	dey                                                  ; $cc6e : $88
	.db $23                                                  ; $cc6f : $23
	.db $00                                                  ; $cc70 : $00
	.db $27                                                  ; $cc71 : $27
	.db $23                                                  ; $cc72 : $23
	.db $3c                                                  ; $cc73 : $3c
	.db $62                                                  ; $cc74 : $62
	adc $71                                                  ; $cc75 : $65, $71
	.db $67                                                  ; $cc77 : $67
	.db $33                                                  ; $cc78 : $33
	sty $dc61                                                  ; $cc79 : $8c, $61, $dc
	ora ($08, x)                                                  ; $cc7c : $01, $08
	.db $fa                                                  ; $cc7e : $fa
	eor $75                                                  ; $cc7f : $45, $75
	.db $63                                                  ; $cc81 : $63
	asl a                                                  ; $cc82 : $0a
	.db $73                                                  ; $cc83 : $73
	.db $23                                                  ; $cc84 : $23
	.db $7c                                                  ; $cc85 : $7c
	.db $02                                                  ; $cc86 : $02
	.db $8f                                                  ; $cc87 : $8f
	.db $72                                                  ; $cc88 : $72
	.db $73                                                  ; $cc89 : $73
	lda #$9f                                                  ; $cc8a : $a9, $9f
	.db $74                                                  ; $cc8c : $74
	.db $bf                                                  ; $cc8d : $bf
	.db $74                                                  ; $cc8e : $74
	.db $ef                                                  ; $cc8f : $ef
	.db $73                                                  ; $cc90 : $73
	and $fcf1, y                                                  ; $cc91 : $39, $f1, $fc
	asl a                                                  ; $cc94 : $0a
	ora $130b                                                  ; $cc95 : $0d, $0b, $13
	and $4c                                                  ; $cc98 : $25, $4c
	ora ($4f, x)                                                  ; $cc9a : $01, $4f
	.db $72                                                  ; $cc9c : $72
	.db $73                                                  ; $cc9d : $73
	.db $0b                                                  ; $cc9e : $0b
	.db $77                                                  ; $cc9f : $77

br_03_cca0:
	.db $03                                                  ; $cca0 : $03
	.db $dc                                                  ; $cca1 : $dc
	php                                                  ; $cca2 : $08
	.db $23                                                  ; $cca3 : $23
	ldx #$53                                                  ; $cca4 : $a2, $53
	ora #$56                                                  ; $cca6 : $09, $56
	.db $03                                                  ; $cca8 : $03
	.db $63                                                  ; $cca9 : $63
	bit $8c                                                  ; $ccaa : $24, $8c
	.db $02                                                  ; $ccac : $02
	.db $3f                                                  ; $ccad : $3f
	.db $b3                                                  ; $ccae : $b3
	.db $77                                                  ; $ccaf : $77
	.db $63                                                  ; $ccb0 : $63
	stx $74, y                                                  ; $ccb1 : $96, $74
	.db $b3                                                  ; $ccb3 : $b3
	.db $77                                                  ; $ccb4 : $77
	eor $8fc1, x                                                  ; $ccb5 : $5d, $c1, $8f
	rol $7d                                                  ; $ccb8 : $26, $7d
	.db $c7                                                  ; $ccba : $c7
	sbc $1154, x                                                  ; $ccbb : $fd, $54, $11
	.db $0f                                                  ; $ccbe : $0f
	rol $cf                                                  ; $ccbf : $26, $cf
	.db $32                                                  ; $ccc1 : $32
	sed                                                  ; $ccc2 : $f8
	.db $62                                                  ; $ccc3 : $62
	inc $3c10, x                                                  ; $ccc4 : $fe, $10, $3c
	.db $b2                                                  ; $ccc7 : $b2
	lda $ea48, x                                                  ; $ccc8 : $bd, $48, $ea
	.db $62                                                  ; $cccb : $62
	.db $fc                                                  ; $cccc : $fc
	eor $4dfc                                                  ; $cccd : $4d, $fc, $4d
	.db $17                                                  ; $ccd0 : $17
	cmp #$da                                                  ; $ccd1 : $c9, $da
	.db $62                                                  ; $ccd3 : $62
	.db $0b                                                  ; $ccd4 : $0b
	.db $97                                                  ; $ccd5 : $97
	.db $b7                                                  ; $ccd6 : $b7
	.db $12                                                  ; $ccd7 : $12
	bit $33b1                                                  ; $ccd8 : $2c, $b1, $33
	.db $43                                                  ; $ccdb : $43
	jmp ($ac31)                                                  ; $ccdc : $6c, $31, $ac


	eor ($0b, x)                                                  ; $ccdf : $41, $0b
	tya                                                  ; $cce1 : $98
	lda $db4a                                                  ; $cce2 : $ad, $4a, $db
	bmi $27                                                  ; $cce5 : $30, $27

	bcs br_03_cca0                                                  ; $cce7 : $b0, $b7

	.db $14                                                  ; $cce9 : $14
	dec $42                                                  ; $ccea : $c6, $42
	.db $c7                                                  ; $ccec : $c7
	stx $d6, y                                                  ; $cced : $96, $d6
	.db $44                                                  ; $ccef : $44
	.db $2b                                                  ; $ccf0 : $2b
	.db $92                                                  ; $ccf1 : $92
	and $720f, y                                                  ; $ccf2 : $39, $0f, $72
	eor ($a7, x)                                                  ; $ccf5 : $41, $a7
	.db $00                                                  ; $ccf7 : $00
	.db $1b                                                  ; $ccf8 : $1b
	sta $97, x                                                  ; $ccf9 : $95, $97
	.db $13                                                  ; $ccfb : $13
	jmp ($6f95)                                                  ; $ccfc : $6c, $95, $6f


	ora ($a2), y                                                  ; $ccff : $11, $a2
	rti                                                  ; $cd01 : $40


	.db $bf                                                  ; $cd02 : $bf
	ora $c2, x                                                  ; $cd03 : $15, $c2
	rti                                                  ; $cd05 : $40


	.db $0b                                                  ; $cd06 : $0b
	txs                                                  ; $cd07 : $9a
	.db $62                                                  ; $cd08 : $62
	.db $42                                                  ; $cd09 : $42
	.db $63                                                  ; $cd0a : $63
	.db $12                                                  ; $cd0b : $12
	lda $0e4a                                                  ; $cd0c : $ad, $4a, $0e
	sta ($1d), y                                                  ; $cd0f : $91, $1d
	eor ($4f, x)                                                  ; $cd11 : $41, $4f
	rol $4d                                                  ; $cd13 : $26, $4d
	.db $c7                                                  ; $cd15 : $c7
	sbc $1157, x                                                  ; $cd16 : $fd, $57, $11
	.db $0f                                                  ; $cd19 : $0f
	rol $fe                                                  ; $cd1a : $26, $fe
	bpl br_03_cd69                                                  ; $cd1c : $10, $4b

	.db $92                                                  ; $cd1e : $92
	eor $ad0f, y                                                  ; $cd1f : $59, $0f, $ad
	jmp $93d3                                                  ; $cd22 : $4c, $d3, $93


	.db $0b                                                  ; $cd25 : $0b
	sty $29, x                                                  ; $cd26 : $94, $29
	.db $0f                                                  ; $cd28 : $0f
	.db $7b                                                  ; $cd29 : $7b
	.db $93                                                  ; $cd2a : $93
	sta $0d0f, y                                                  ; $cd2b : $99, $0f, $0d
	asl $27                                                  ; $cd2e : $06, $27
	.db $12                                                  ; $cd30 : $12
	and $0f, x                                                  ; $cd31 : $35, $0f
	.db $23                                                  ; $cd33 : $23
	lda ($57), y                                                  ; $cd34 : $b1, $57
	adc $a3, x                                                  ; $cd36 : $75, $a3
	and ($ab), y                                                  ; $cd38 : $31, $ab
	adc ($f7), y                                                  ; $cd3a : $71, $f7
	adc $23, x                                                  ; $cd3c : $75, $23
	lda ($87), y                                                  ; $cd3e : $b1, $87
	.db $13                                                  ; $cd40 : $13
	sta $0f, x                                                  ; $cd41 : $95, $0f
	ora $230a                                                  ; $cd43 : $0d, $0a, $23
	and $38, x                                                  ; $cd46 : $35, $38
	.db $13                                                  ; $cd48 : $13
	eor $00, x                                                  ; $cd49 : $55, $00
	.db $9b                                                  ; $cd4b : $9b
	asl $0b, x                                                  ; $cd4c : $16, $0b
	stx $c7, y                                                  ; $cd4e : $96, $c7
	adc $dd, x                                                  ; $cd50 : $75, $dd
	lsr a                                                  ; $cd52 : $4a
	.db $3b                                                  ; $cd53 : $3b
	.db $92                                                  ; $cd54 : $92
	eor #$0f                                                  ; $cd55 : $49, $0f
	lda $294c                                                  ; $cd57 : $ad, $4c, $29
	.db $92                                                  ; $cd5a : $92
	.db $52                                                  ; $cd5b : $52
	rti                                                  ; $cd5c : $40


	jmp ($6f15)                                                  ; $cd5d : $6c, $15, $6f


	ora ($72), y                                                  ; $cd60 : $11, $72
	rti                                                  ; $cd62 : $40


	.db $bf                                                  ; $cd63 : $bf
	ora $03, x                                                  ; $cd64 : $15, $03
	.db $93                                                  ; $cd66 : $93
	asl a                                                  ; $cd67 : $0a
	.db $13                                                  ; $cd68 : $13

br_03_cd69:
	.db $12                                                  ; $cd69 : $12
	eor ($8b, x)                                                  ; $cd6a : $41, $8b
	.db $12                                                  ; $cd6c : $12
	sta $0d0f, y                                                  ; $cd6d : $99, $0f, $0d
	bpl $47                                                  ; $cd70 : $10, $47

	asl $46, x                                                  ; $cd72 : $16, $46
	eor $b3                                                  ; $cd74 : $45, $b3
	.db $32                                                  ; $cd76 : $32
	.db $13                                                  ; $cd77 : $13
	lda ($57), y                                                  ; $cd78 : $b1, $57
	asl $0ea7                                                  ; $cd7a : $0e, $a7, $0e
	.db $d3                                                  ; $cd7d : $d3
	and ($53), y                                                  ; $cd7e : $31, $53
	lda ($a6), y                                                  ; $cd80 : $b1, $a6
	and ($03), y                                                  ; $cd82 : $31, $03
	.db $b2                                                  ; $cd84 : $b2
	.db $13                                                  ; $cd85 : $13
	asl $4d8d                                                  ; $cd86 : $0e, $8d, $4d
	ldx $bd11                                                  ; $cd89 : $ae, $11, $bd
	eor ($ee, x)                                                  ; $cd8c : $41, $ee
	.db $52                                                  ; $cd8e : $52
	.db $0f                                                  ; $cd8f : $0f
	ldy #$dd                                                  ; $cd90 : $a0, $dd
	.db $47                                                  ; $cd92 : $47
	sbc $a152, x                                                  ; $cd93 : $fd, $52, $a1
	.db $0f                                                  ; $cd96 : $0f

br_03_cd97:
	jsr $656e                                                  ; $cd97 : $20, $6e, $65
	.db $04                                                  ; $cd9a : $04
	ldy #$14                                                  ; $cd9b : $a0, $14
	.db $07                                                  ; $cd9d : $07
	bit $2d                                                  ; $cd9e : $24, $2d
	.db $57                                                  ; $cda0 : $57
	and $bc                                                  ; $cda1 : $25, $bc
	ora #$4c                                                  ; $cda3 : $09, $4c
	.db $80                                                  ; $cda5 : $80
	.db $6f                                                  ; $cda6 : $6f
	.db $33                                                  ; $cda7 : $33
	lda $11                                                  ; $cda8 : $a5, $11
	.db $a7                                                  ; $cdaa : $a7
	.db $63                                                  ; $cdab : $63
	.db $b7                                                  ; $cdac : $b7
	.db $63                                                  ; $cdad : $63
	.db $e7                                                  ; $cdae : $e7
	jsr $a035                                                  ; $cdaf : $20, $35, $a0
	eor $b411, y                                                  ; $cdb2 : $59, $11, $b4
	php                                                  ; $cdb5 : $08
	cpy #$04                                                  ; $cdb6 : $c0, $04
	ora $82                                                  ; $cdb8 : $05, $82
	ora $02, x                                                  ; $cdba : $15, $02
	and $02                                                  ; $cdbc : $25, $02
	.db $3a                                                  ; $cdbe : $3a
	bpl $4c                                                  ; $cdbf : $10, $4c

	ora ($6c, x)                                                  ; $cdc1 : $01, $6c
	adc $7995, y                                                  ; $cdc3 : $79, $95, $79
	.db $73                                                  ; $cdc6 : $73
	.db $a7                                                  ; $cdc7 : $a7
	.db $8f                                                  ; $cdc8 : $8f
	.db $74                                                  ; $cdc9 : $74
	.db $f3                                                  ; $cdca : $f3
	asl a                                                  ; $cdcb : $0a
	.db $03                                                  ; $cdcc : $03
	ldy #$93                                                  ; $cdcd : $a0, $93
	php                                                  ; $cdcf : $08
	.db $97                                                  ; $cdd0 : $97
	.db $73                                                  ; $cdd1 : $73
	.db $e3                                                  ; $cdd2 : $e3
	jsr $f139                                                  ; $cdd3 : $20, $39, $f1
	sty $07, x                                                  ; $cdd6 : $94, $07
	tax                                                  ; $cdd8 : $aa
	bmi br_03_cd97                                                  ; $cdd9 : $30, $bc

	.db $5c                                                  ; $cddb : $5c
	.db $c7                                                  ; $cddc : $c7
	bmi $24                                                  ; $cddd : $30, $24

	.db $f2                                                  ; $cddf : $f2
	.db $27                                                  ; $cde0 : $27
	and ($8f), y                                                  ; $cde1 : $31, $8f
	.db $33                                                  ; $cde3 : $33
	dec $10                                                  ; $cde4 : $c6, $10
	.db $c7                                                  ; $cde6 : $c7
	.db $63                                                  ; $cde7 : $63
	.db $d7                                                  ; $cde8 : $d7
	.db $63                                                  ; $cde9 : $63

br_03_cdea:
	.db $e7                                                  ; $cdea : $e7
	.db $63                                                  ; $cdeb : $63
	.db $f7                                                  ; $cdec : $f7
	.db $63                                                  ; $cded : $63
	.db $03                                                  ; $cdee : $03
	lda $07                                                  ; $cdef : $a5, $07
	and $aa                                                  ; $cdf1 : $25, $aa
	bpl br_03_cdf8                                                  ; $cdf3 : $10, $03

	.db $bf                                                  ; $cdf5 : $bf
	.db $4f                                                  ; $cdf6 : $4f
	.db $74                                                  ; $cdf7 : $74

br_03_cdf8:
	jmp ($df00)                                                  ; $cdf8 : $6c, $00, $df


	.db $74                                                  ; $cdfb : $74
	.db $fc                                                  ; $cdfc : $fc
	.db $00                                                  ; $cdfd : $00
	.db $5c                                                  ; $cdfe : $5c
	sta ($77, x)                                                  ; $cdff : $81, $77
	.db $73                                                  ; $ce01 : $73
	sta $c54c, x                                                  ; $ce02 : $9d, $4c, $c5
	bmi br_03_cdea                                                  ; $ce05 : $30, $e3

	bmi br_03_ce86                                                  ; $ce07 : $30, $7d

	cmp ($bd, x)                                                  ; $ce09 : $c1, $bd
	eor $26bf                                                  ; $ce0b : $4d, $bf, $26
	lda $fdc7                                                  ; $ce0e : $ad, $c7, $fd
	eor $a1, x                                                  ; $ce11 : $55, $a1
	.db $0f                                                  ; $ce13 : $0f
	rol $9c                                                  ; $ce14 : $26, $9c
	ora ($4f, x)                                                  ; $ce16 : $01, $4f
	ldx $b3, y                                                  ; $ce18 : $b6, $b3
	.db $34                                                  ; $ce1a : $34
	cmp #$3f                                                  ; $ce1b : $c9, $3f
	.db $13                                                  ; $ce1d : $13
	tsx                                                  ; $ce1e : $ba
	.db $a3                                                  ; $ce1f : $a3
	.db $b3                                                  ; $ce20 : $b3
	.db $bf                                                  ; $ce21 : $bf
	.db $74                                                  ; $ce22 : $74
	.db $0c                                                  ; $ce23 : $0c
	sty $83                                                  ; $ce24 : $84, $83
	.db $3f                                                  ; $ce26 : $3f
	.db $9f                                                  ; $ce27 : $9f
	.db $74                                                  ; $ce28 : $74
	.db $ef                                                  ; $ce29 : $ef
	.db $72                                                  ; $ce2a : $72
	cpx $2f01                                                  ; $ce2b : $ec, $01, $2f
	.db $f2                                                  ; $ce2e : $f2
	bit $6f01                                                  ; $ce2f : $2c, $01, $6f
	.db $72                                                  ; $ce32 : $72
	jmp ($a801)                                                  ; $ce33 : $6c, $01, $a8


	sta ($aa), y                                                  ; $ce36 : $91, $aa
	bpl br_03_ce3d                                                  ; $ce38 : $10, $03

	.db $b7                                                  ; $ce3a : $b7
	adc ($79, x)                                                  ; $ce3b : $61, $79

br_03_ce3d:
	.db $6f                                                  ; $ce3d : $6f
	adc $39, x                                                  ; $ce3e : $75, $39
	sbc ($db), y                                                  ; $ce40 : $f1, $db
	adc ($03), y                                                  ; $ce42 : $71, $03
	ldx #$17                                                  ; $ce44 : $a2, $17
	.db $22                                                  ; $ce46 : $22
	.db $33                                                  ; $ce47 : $33
	ora #$43                                                  ; $ce48 : $09, $43
	jsr $715b                                                  ; $ce4a : $20, $5b, $71
	pha                                                  ; $ce4d : $48
	.db $8f                                                  ; $ce4e : $8f
	lsr a                                                  ; $ce4f : $4a
	bmi $5c                                                  ; $ce50 : $30, $5c

	.db $5c                                                  ; $ce52 : $5c
	.db $a3                                                  ; $ce53 : $a3
	bmi br_03_ce83                                                  ; $ce54 : $30, $2d

	cmp ($5f, x)                                                  ; $ce56 : $c1, $5f
	rol $3d                                                  ; $ce58 : $26, $3d
	.db $c7                                                  ; $ce5a : $c7
	sbc $a155, x                                                  ; $ce5b : $fd, $55, $a1
	.db $0f                                                  ; $ce5e : $0f
	rol $39                                                  ; $ce5f : $26, $39
	sta ($68), y                                                  ; $ce61 : $91, $68
	.db $12                                                  ; $ce63 : $12
	.db $a7                                                  ; $ce64 : $a7
	.db $12                                                  ; $ce65 : $12
	tax                                                  ; $ce66 : $aa
	bpl -$39                                                  ; $ce67 : $10, $c7

	.db $07                                                  ; $ce69 : $07
	inx                                                  ; $ce6a : $e8
	.db $12                                                  ; $ce6b : $12
	ora $6c91, y                                                  ; $ce6c : $19, $91, $6c
	.db $00                                                  ; $ce6f : $00
	sei                                                  ; $ce70 : $78

br_03_ce71:
	.db $74                                                  ; $ce71 : $74
	asl $76c2                                                  ; $ce72 : $0e, $c2, $76
	tay                                                  ; $ce75 : $a8
	inc $2940, x                                                  ; $ce76 : $fe, $40, $29
	sta ($73), y                                                  ; $ce79 : $91, $73
	and #$77                                                  ; $ce7b : $29, $77
	.db $53                                                  ; $ce7d : $53
	sty $5977                                                  ; $ce7e : $8c, $77, $59
	sta ($87), y                                                  ; $ce81 : $91, $87

br_03_ce83:
	.db $13                                                  ; $ce83 : $13
	ldx $14, y                                                  ; $ce84 : $b6, $14

br_03_ce86:
	tsx                                                  ; $ce86 : $ba
	bpl br_03_ce71                                                  ; $ce87 : $10, $e8

	.db $12                                                  ; $ce89 : $12
	sec                                                  ; $ce8a : $38
	.db $92                                                  ; $ce8b : $92
	ora $2c8f, y                                                  ; $ce8c : $19, $8f, $2c
	.db $00                                                  ; $ce8f : $00
	.db $33                                                  ; $ce90 : $33
	.db $67                                                  ; $ce91 : $67
	lsr $6842                                                  ; $ce92 : $4e, $42, $68
	.db $0b                                                  ; $ce95 : $0b
	rol $38c0                                                  ; $ce96 : $2e, $c0, $38
	.db $72                                                  ; $ce99 : $72
	tay                                                  ; $ce9a : $a8
	ora ($aa), y                                                  ; $ce9b : $11, $aa
	bpl $49                                                  ; $ce9d : $10, $49

	sta ($6e), y                                                  ; $ce9f : $91, $6e
	.db $42                                                  ; $cea1 : $42
	dec $e740, x                                                  ; $cea2 : $de, $40, $e7
	.db $22                                                  ; $cea5 : $22
	asl $4ec2                                                  ; $cea6 : $0e, $c2, $4e
	cpy #$6c                                                  ; $cea9 : $c0, $6c
	.db $00                                                  ; $ceab : $00
	adc $8c11, y                                                  ; $ceac : $79, $11, $8c
	ora ($a7, x)                                                  ; $ceaf : $01, $a7
	.db $13                                                  ; $ceb1 : $13
	ldy $d501, x                                                  ; $ceb2 : $bc, $01, $d5
	ora $ec, x                                                  ; $ceb5 : $15, $ec
	ora ($03, x)                                                  ; $ceb7 : $01, $03
	.db $97                                                  ; $ceb9 : $97
	asl $6e00                                                  ; $ceba : $0e, $00, $6e
	ora ($9d, x)                                                  ; $cebd : $01, $9d
	eor ($ce, x)                                                  ; $cebf : $41, $ce
	.db $42                                                  ; $cec1 : $42
	.db $ff                                                  ; $cec2 : $ff
	jsr $c79d                                                  ; $cec3 : $20, $9d, $c7
	sbc $2110, x                                                  ; $cec6 : $fd, $10, $21
	and $09f1, y                                                  ; $cec9 : $39, $f1, $09
	sbc ($ad), y                                                  ; $cecc : $f1, $ad
	jmp $837c                                                  ; $cece : $4c, $7c, $83


	stx $30, y                                                  ; $ced1 : $96, $30
	.db $5b                                                  ; $ced3 : $5b
	sbc ($c8), y                                                  ; $ced4 : $f1, $c8
	ora $1f                                                  ; $ced6 : $05, $1f
	.db $b7                                                  ; $ced8 : $b7
	.db $93                                                  ; $ced9 : $93
	.db $67                                                  ; $ceda : $67
	.db $a3                                                  ; $cedb : $a3
	.db $67                                                  ; $cedc : $67
	.db $b3                                                  ; $cedd : $b3
	.db $67                                                  ; $cede : $67
	lda $cc4d, x                                                  ; $cedf : $bd, $4d, $cc
	php                                                  ; $cee2 : $08
	.db $54                                                  ; $cee3 : $54
	inc $2f6e, x                                                  ; $cee4 : $fe, $6e, $2f
	adc $fdc7                                                  ; $cee7 : $6d, $c7, $fd
	.db $00                                                  ; $ceea : $00
	cmp ($4c, x)                                                  ; $ceeb : $c1, $4c
	.db $00                                                  ; $ceed : $00
	.db $02                                                  ; $ceee : $02
	cmp #$ba                                                  ; $ceef : $c9, $ba
	eor #$62                                                  ; $cef1 : $49, $62
	cmp #$a4                                                  ; $cef3 : $c9, $a4
	jsr $20a5                                                  ; $cef5 : $20, $a5, $20
	.db $1a                                                  ; $cef8 : $1a
	cmp #$a3                                                  ; $cef9 : $c9, $a3
	bit $49b2                                                  ; $cefb : $2c, $b2, $49
	lsr $c2, x                                                  ; $cefe : $56, $c2
	ror $9500                                                  ; $cf00 : $6e, $00, $95
	eor ($ad, x)                                                  ; $cf03 : $41, $ad
	.db $c7                                                  ; $cf05 : $c7
	sbc $8f48, x                                                  ; $cf06 : $fd, $48, $8f
	asl $4e01, x                                                  ; $cf09 : $1e, $01, $4e
	.db $02                                                  ; $cf0c : $02
	.db $00                                                  ; $cf0d : $00
	sty $0f09                                                  ; $cf0e : $8c, $09, $0f
	ror $ee0a                                                  ; $cf11 : $6e, $0a, $ee
	.db $82                                                  ; $cf14 : $82
	rol $3080                                                  ; $cf15 : $2e, $80, $30
	jsr $017e                                                  ; $cf18 : $20, $7e, $01
	.db $87                                                  ; $cf1b : $87
	.db $27                                                  ; $cf1c : $27
	.db $07                                                  ; $cf1d : $07
	.db $87                                                  ; $cf1e : $87
	.db $17                                                  ; $cf1f : $17
	.db $23                                                  ; $cf20 : $23
	rol $9e00, x                                                  ; $cf21 : $3e, $00, $9e
	ora $5b                                                  ; $cf24 : $05, $5b
	sbc ($8b), y                                                  ; $cf26 : $f1, $8b
	adc ($bb), y                                                  ; $cf28 : $71, $bb
	adc ($eb), y                                                  ; $cf2a : $71, $eb
	adc ($3e), y                                                  ; $cf2c : $71, $3e
	.db $82                                                  ; $cf2e : $82
	.db $7f                                                  ; $cf2f : $7f
	sec                                                  ; $cf30 : $38
	inc $3e0a, x                                                  ; $cf31 : $fe, $0a, $3e
	sty $47                                                  ; $cf34 : $84, $47
	and #$48                                                  ; $cf36 : $29, $48
	rol $71af                                                  ; $cf38 : $2e, $af, $71
	.db $cb                                                  ; $cf3b : $cb
	adc ($e7), y                                                  ; $cf3c : $71, $e7
	asl a                                                  ; $cf3e : $0a
	.db $f7                                                  ; $cf3f : $f7
	.db $23                                                  ; $cf40 : $23
	.db $2b                                                  ; $cf41 : $2b
	sbc ($37), y                                                  ; $cf42 : $f1, $37
	eor ($3e), y                                                  ; $cf44 : $51, $3e
	.db $00                                                  ; $cf46 : $00
	.db $6f                                                  ; $cf47 : $6f
	.db $00                                                  ; $cf48 : $00
	stx $df04                                                  ; $cf49 : $8e, $04, $df
	.db $32                                                  ; $cf4c : $32
	.db $9c                                                  ; $cf4d : $9c
	.db $82                                                  ; $cf4e : $82
	dex                                                  ; $cf4f : $ca
	.db $12                                                  ; $cf50 : $12
	.db $dc                                                  ; $cf51 : $dc
	.db $00                                                  ; $cf52 : $00
	inx                                                  ; $cf53 : $e8
	.db $14                                                  ; $cf54 : $14
	.db $fc                                                  ; $cf55 : $fc
	.db $00                                                  ; $cf56 : $00
	inc $4e08, x                                                  ; $cf57 : $fe, $08, $4e
	txa                                                  ; $cf5a : $8a
	dey                                                  ; $cf5b : $88
	.db $74                                                  ; $cf5c : $74
	.db $9e                                                  ; $cf5d : $9e
	ora ($a8, x)                                                  ; $cf5e : $01, $a8
	.db $52                                                  ; $cf60 : $52
	.db $bf                                                  ; $cf61 : $bf
	.db $47                                                  ; $cf62 : $47
	clv                                                  ; $cf63 : $b8
	.db $52                                                  ; $cf64 : $52
	iny                                                  ; $cf65 : $c8
	.db $52                                                  ; $cf66 : $52
	cld                                                  ; $cf67 : $d8
	.db $52                                                  ; $cf68 : $52
	inx                                                  ; $cf69 : $e8
	.db $52                                                  ; $cf6a : $52
	inc $4d0f                                                  ; $cf6b : $ee, $0f, $4d
	.db $c7                                                  ; $cf6e : $c7
	ora $0e0d                                                  ; $cf6f : $0d, $0d, $0e
	.db $02                                                  ; $cf72 : $02
	pla                                                  ; $cf73 : $68
	.db $7a                                                  ; $cf74 : $7a
	ldx $ee01, y                                                  ; $cf75 : $be, $01, $ee
	.db $0f                                                  ; $cf78 : $0f
	adc $fdc5                                                  ; $cf79 : $6d, $c5, $fd
	php                                                  ; $cf7c : $08
	.db $0f                                                  ; $cf7d : $0f
	asl $2e01                                                  ; $cf7e : $0e, $01, $2e
	ora $38                                                  ; $cf81 : $05, $38
	jsr $043e                                                  ; $cf83 : $20, $3e, $04
	pha                                                  ; $cf86 : $48
	.db $07                                                  ; $cf87 : $07
	eor $45, x                                                  ; $cf88 : $55, $45
	.db $57                                                  ; $cf8a : $57
	eor $58                                                  ; $cf8b : $45, $58
	and $b8                                                  ; $cf8d : $25, $b8
	php                                                  ; $cf8f : $08
	ldx $c805, y                                                  ; $cf90 : $be, $05, $c8
	jsr $01ce                                                  ; $cf93 : $20, $ce, $01
	.db $df                                                  ; $cf96 : $df
	lsr a                                                  ; $cf97 : $4a
	adc $0ec7                                                  ; $cf98 : $6d, $c7, $0e
	sta ($00, x)                                                  ; $cf9b : $81, $00
	.db $5a                                                  ; $cf9d : $5a
	rol $3402                                                  ; $cf9e : $2e, $02, $34
	.db $42                                                  ; $cfa1 : $42
	rol $42, x                                                  ; $cfa2 : $36, $42
	.db $37                                                  ; $cfa4 : $37
	.db $22                                                  ; $cfa5 : $22
	.db $73                                                  ; $cfa6 : $73
	.db $54                                                  ; $cfa7 : $54
	.db $83                                                  ; $cfa8 : $83
	.db $0b                                                  ; $cfa9 : $0b
	.db $87                                                  ; $cfaa : $87
	jsr $5493                                                  ; $cfab : $20, $93, $54
	bcc br_03_cfb7                                                  ; $cfae : $90, $07

	ldy $41, x                                                  ; $cfb0 : $b4, $41
	ldx $41, y                                                  ; $cfb2 : $b6, $41
	.db $b7                                                  ; $cfb4 : $b7
	and ($df, x)                                                  ; $cfb5 : $21, $df

br_03_cfb7:
	lsr a                                                  ; $cfb7 : $4a
	adc $0ec7                                                  ; $cfb8 : $6d, $c7, $0e
	sta ($00, x)                                                  ; $cfbb : $81, $00
	.db $5a                                                  ; $cfbd : $5a
	.db $14                                                  ; $cfbe : $14
	lsr $24, x                                                  ; $cfbf : $56, $24
	lsr $2e, x                                                  ; $cfc1 : $56, $2e
	.db $0c                                                  ; $cfc3 : $0c
	.db $33                                                  ; $cfc4 : $33
	.db $43                                                  ; $cfc5 : $43
	ror $8e09                                                  ; $cfc6 : $6e, $09, $8e
	.db $0b                                                  ; $cfc9 : $0b
	stx $48, y                                                  ; $cfca : $96, $48
	asl $3e84, x                                                  ; $cfcc : $1e, $84, $3e
	ora $4a                                                  ; $cfcf : $05, $4a
	pha                                                  ; $cfd1 : $48
	.db $47                                                  ; $cfd2 : $47
	.db $0b                                                  ; $cfd3 : $0b
	dec $df01                                                  ; $cfd4 : $ce, $01, $df
	lsr a                                                  ; $cfd7 : $4a
	adc $fdc7                                                  ; $cfd8 : $6d, $c7, $fd
	eor ($01, x)                                                  ; $cfdb : $41, $01
	.db $da                                                  ; $cfdd : $da
	rts                                                  ; $cfde : $60


	sbc #$61                                                  ; $cfdf : $e9, $61
	sed                                                  ; $cfe1 : $f8
	.db $62                                                  ; $cfe2 : $62
	inc $fe0b, x                                                  ; $cfe3 : $fe, $0b, $fe
	sta ($47, x)                                                  ; $cfe6 : $81, $47
	.db $d3                                                  ; $cfe8 : $d3
	txa                                                  ; $cfe9 : $8a
	rts                                                  ; $cfea : $60


	sta $a861, y                                                  ; $cfeb : $99, $61, $a8
	.db $62                                                  ; $cfee : $62
	.db $b7                                                  ; $cfef : $b7
	.db $63                                                  ; $cff0 : $63
	dec $64                                                  ; $cff1 : $c6, $64
	cmp $65, x                                                  ; $cff3 : $d5, $65
	cpx $66                                                  ; $cff5 : $e4, $66
	sbc $f349                                                  ; $cff7 : $ed, $49, $f3
	.db $67                                                  ; $cffa : $67
	.db $1a                                                  ; $cffb : $1a
	.db $cb                                                  ; $cffc : $cb
	.db $e3                                                  ; $cffd : $e3
	.db $67                                                  ; $cffe : $67
	.db $f3                                                  ; $cfff : $f3
	.db $67                                                  ; $d000 : $67
	inc $3102, x                                                  ; $d001 : $fe, $02, $31
	dec $3c, x                                                  ; $d004 : $d6, $3c
	.db $02                                                  ; $d006 : $02
	.db $77                                                  ; $d007 : $77
	.db $53                                                  ; $d008 : $53
	ldy $b102                                                  ; $d009 : $ac, $02, $b1
	lsr $e7, x                                                  ; $d00c : $56, $e7
	.db $53                                                  ; $d00e : $53
	inc $7701, x                                                  ; $d00f : $fe, $01, $77
	lda $43a3, y                                                  ; $d012 : $b9, $a3, $43
	.db $00                                                  ; $d015 : $00
	.db $bf                                                  ; $d016 : $bf
	and #$51                                                  ; $d017 : $29, $51
	and $6148, y                                                  ; $d019 : $39, $48, $61
	eor $d2, x                                                  ; $d01c : $55, $d2
	.db $44                                                  ; $d01e : $44
	dec $54, x                                                  ; $d01f : $d6, $54
	.db $0c                                                  ; $d021 : $0c
	.db $82                                                  ; $d022 : $82
	rol $3102                                                  ; $d023 : $2e, $02, $31
	ror $44                                                  ; $d026 : $66, $44
	.db $47                                                  ; $d028 : $47
	.db $47                                                  ; $d029 : $47
	.db $32                                                  ; $d02a : $32
	lsr a                                                  ; $d02b : $4a
	.db $47                                                  ; $d02c : $47
	.db $97                                                  ; $d02d : $97
	.db $32                                                  ; $d02e : $32
	cmp ($66, x)                                                  ; $d02f : $c1, $66
	dec $dc01                                                  ; $d031 : $ce, $01, $dc
	.db $02                                                  ; $d034 : $02
	inc $0c0e, x                                                  ; $d035 : $fe, $0e, $0c
	.db $8f                                                  ; $d038 : $8f
	php                                                  ; $d039 : $08
	.db $4f                                                  ; $d03a : $4f
	inc $7502, x                                                  ; $d03b : $fe, $02, $75
	cpx #$fe                                                  ; $d03e : $e0, $fe
	ora ($0c, x)                                                  ; $d040 : $01, $0c
	.db $87                                                  ; $d042 : $87
	txs                                                  ; $d043 : $9a
	rts                                                  ; $d044 : $60


	lda #$61                                                  ; $d045 : $a9, $61
	clv                                                  ; $d047 : $b8
	.db $62                                                  ; $d048 : $62
	.db $c7                                                  ; $d049 : $c7
	.db $63                                                  ; $d04a : $63
	dec $d50f                                                  ; $d04b : $ce, $0f, $d5
	ora $ca6d                                                  ; $d04e : $0d, $6d, $ca
	adc $fd47, x                                                  ; $d051 : $7d, $47, $fd
	.db $ff                                                  ; $d054 : $ff
	.db $ff                                                  ; $d055 : $ff
	.db $ff                                                  ; $d056 : $ff
	.db $ff                                                  ; $d057 : $ff
	.db $ff                                                  ; $d058 : $ff
	.db $ff                                                  ; $d059 : $ff
	.db $ff                                                  ; $d05a : $ff
	.db $ff                                                  ; $d05b : $ff
	.db $ff                                                  ; $d05c : $ff
	.db $ff                                                  ; $d05d : $ff
	.db $ff                                                  ; $d05e : $ff
	.db $ff                                                  ; $d05f : $ff
	.db $ff                                                  ; $d060 : $ff
	.db $ff                                                  ; $d061 : $ff
	.db $ff                                                  ; $d062 : $ff
	.db $ff                                                  ; $d063 : $ff
	.db $ff                                                  ; $d064 : $ff
	.db $ff                                                  ; $d065 : $ff
	.db $ff                                                  ; $d066 : $ff
	.db $ff                                                  ; $d067 : $ff
	.db $ff                                                  ; $d068 : $ff
	.db $ff                                                  ; $d069 : $ff
	.db $ff                                                  ; $d06a : $ff
	.db $ff                                                  ; $d06b : $ff
	.db $ff                                                  ; $d06c : $ff
	.db $ff                                                  ; $d06d : $ff
	.db $ff                                                  ; $d06e : $ff
	.db $ff                                                  ; $d06f : $ff
	.db $ff                                                  ; $d070 : $ff
	.db $ff                                                  ; $d071 : $ff
	.db $ff                                                  ; $d072 : $ff
	.db $ff                                                  ; $d073 : $ff
	.db $ff                                                  ; $d074 : $ff
	.db $ff                                                  ; $d075 : $ff
	.db $ff                                                  ; $d076 : $ff
	.db $ff                                                  ; $d077 : $ff
	.db $ff                                                  ; $d078 : $ff
	.db $ff                                                  ; $d079 : $ff
	.db $ff                                                  ; $d07a : $ff
	.db $ff                                                  ; $d07b : $ff
	.db $ff                                                  ; $d07c : $ff
	.db $ff                                                  ; $d07d : $ff
	.db $ff                                                  ; $d07e : $ff
	.db $ff                                                  ; $d07f : $ff
	.db $ff                                                  ; $d080 : $ff
	.db $ff                                                  ; $d081 : $ff
	.db $ff                                                  ; $d082 : $ff
	.db $ff                                                  ; $d083 : $ff
	.db $ff                                                  ; $d084 : $ff
	.db $ff                                                  ; $d085 : $ff
	.db $ff                                                  ; $d086 : $ff
	.db $ff                                                  ; $d087 : $ff
	.db $ff                                                  ; $d088 : $ff
	.db $ff                                                  ; $d089 : $ff
	.db $ff                                                  ; $d08a : $ff
	.db $ff                                                  ; $d08b : $ff
	.db $ff                                                  ; $d08c : $ff
	.db $ff                                                  ; $d08d : $ff
	.db $ff                                                  ; $d08e : $ff
	.db $ff                                                  ; $d08f : $ff
	.db $ff                                                  ; $d090 : $ff
	.db $ff                                                  ; $d091 : $ff
	.db $ff                                                  ; $d092 : $ff
	.db $ff                                                  ; $d093 : $ff
	.db $ff                                                  ; $d094 : $ff
	.db $ff                                                  ; $d095 : $ff
	.db $ff                                                  ; $d096 : $ff
	.db $ff                                                  ; $d097 : $ff
	.db $ff                                                  ; $d098 : $ff
	.db $ff                                                  ; $d099 : $ff
	.db $ff                                                  ; $d09a : $ff
	.db $ff                                                  ; $d09b : $ff
	.db $ff                                                  ; $d09c : $ff
	.db $ff                                                  ; $d09d : $ff
	.db $ff                                                  ; $d09e : $ff
	.db $ff                                                  ; $d09f : $ff
	.db $ff                                                  ; $d0a0 : $ff
	.db $ff                                                  ; $d0a1 : $ff
	.db $ff                                                  ; $d0a2 : $ff
	.db $ff                                                  ; $d0a3 : $ff
	.db $ff                                                  ; $d0a4 : $ff
	.db $ff                                                  ; $d0a5 : $ff
	.db $ff                                                  ; $d0a6 : $ff
	.db $ff                                                  ; $d0a7 : $ff
	.db $ff                                                  ; $d0a8 : $ff
	.db $ff                                                  ; $d0a9 : $ff
	.db $ff                                                  ; $d0aa : $ff
	.db $ff                                                  ; $d0ab : $ff
	.db $ff                                                  ; $d0ac : $ff
	.db $ff                                                  ; $d0ad : $ff
	.db $ff                                                  ; $d0ae : $ff
	.db $ff                                                  ; $d0af : $ff
	.db $ff                                                  ; $d0b0 : $ff
	.db $ff                                                  ; $d0b1 : $ff
	.db $ff                                                  ; $d0b2 : $ff
	.db $ff                                                  ; $d0b3 : $ff
	.db $ff                                                  ; $d0b4 : $ff
	.db $ff                                                  ; $d0b5 : $ff
	.db $ff                                                  ; $d0b6 : $ff
	.db $ff                                                  ; $d0b7 : $ff
	.db $ff                                                  ; $d0b8 : $ff
	.db $ff                                                  ; $d0b9 : $ff
	.db $ff                                                  ; $d0ba : $ff
	.db $ff                                                  ; $d0bb : $ff
	.db $ff                                                  ; $d0bc : $ff
	.db $ff                                                  ; $d0bd : $ff
	.db $ff                                                  ; $d0be : $ff
	.db $ff                                                  ; $d0bf : $ff
	.db $ff                                                  ; $d0c0 : $ff
	.db $ff                                                  ; $d0c1 : $ff
	.db $ff                                                  ; $d0c2 : $ff
	.db $ff                                                  ; $d0c3 : $ff
	.db $ff                                                  ; $d0c4 : $ff
	.db $ff                                                  ; $d0c5 : $ff
	.db $ff                                                  ; $d0c6 : $ff
	.db $ff                                                  ; $d0c7 : $ff
	.db $ff                                                  ; $d0c8 : $ff
	.db $ff                                                  ; $d0c9 : $ff
	.db $ff                                                  ; $d0ca : $ff
	.db $ff                                                  ; $d0cb : $ff
	.db $ff                                                  ; $d0cc : $ff
	.db $ff                                                  ; $d0cd : $ff
	.db $ff                                                  ; $d0ce : $ff
	.db $ff                                                  ; $d0cf : $ff
	.db $ff                                                  ; $d0d0 : $ff
	.db $ff                                                  ; $d0d1 : $ff
	.db $ff                                                  ; $d0d2 : $ff
	.db $ff                                                  ; $d0d3 : $ff
	.db $ff                                                  ; $d0d4 : $ff
	.db $ff                                                  ; $d0d5 : $ff
	.db $ff                                                  ; $d0d6 : $ff
	.db $ff                                                  ; $d0d7 : $ff
	.db $ff                                                  ; $d0d8 : $ff
	.db $ff                                                  ; $d0d9 : $ff
	.db $ff                                                  ; $d0da : $ff
	.db $ff                                                  ; $d0db : $ff
	.db $ff                                                  ; $d0dc : $ff
	.db $ff                                                  ; $d0dd : $ff
	.db $ff                                                  ; $d0de : $ff
	.db $ff                                                  ; $d0df : $ff
	.db $ff                                                  ; $d0e0 : $ff
	.db $ff                                                  ; $d0e1 : $ff
	.db $ff                                                  ; $d0e2 : $ff
	.db $ff                                                  ; $d0e3 : $ff
	.db $ff                                                  ; $d0e4 : $ff
	.db $ff                                                  ; $d0e5 : $ff
	.db $ff                                                  ; $d0e6 : $ff
	.db $ff                                                  ; $d0e7 : $ff
	.db $ff                                                  ; $d0e8 : $ff
	.db $ff                                                  ; $d0e9 : $ff
	.db $ff                                                  ; $d0ea : $ff
	.db $ff                                                  ; $d0eb : $ff
	.db $ff                                                  ; $d0ec : $ff
	.db $ff                                                  ; $d0ed : $ff
	.db $ff                                                  ; $d0ee : $ff
	.db $ff                                                  ; $d0ef : $ff
	.db $ff                                                  ; $d0f0 : $ff
	.db $ff                                                  ; $d0f1 : $ff
	.db $ff                                                  ; $d0f2 : $ff
	.db $ff                                                  ; $d0f3 : $ff
	.db $ff                                                  ; $d0f4 : $ff
	.db $ff                                                  ; $d0f5 : $ff
	.db $ff                                                  ; $d0f6 : $ff
	.db $ff                                                  ; $d0f7 : $ff
	.db $ff                                                  ; $d0f8 : $ff
	.db $ff                                                  ; $d0f9 : $ff
	.db $ff                                                  ; $d0fa : $ff
	.db $ff                                                  ; $d0fb : $ff
	.db $ff                                                  ; $d0fc : $ff
	.db $ff                                                  ; $d0fd : $ff
	.db $ff                                                  ; $d0fe : $ff
	.db $ff                                                  ; $d0ff : $ff
	.db $ff                                                  ; $d100 : $ff
	.db $ff                                                  ; $d101 : $ff
	.db $ff                                                  ; $d102 : $ff
	.db $ff                                                  ; $d103 : $ff
	.db $ff                                                  ; $d104 : $ff
	.db $ff                                                  ; $d105 : $ff
	.db $ff                                                  ; $d106 : $ff
	.db $ff                                                  ; $d107 : $ff
	.db $ff                                                  ; $d108 : $ff
	.db $ff                                                  ; $d109 : $ff
	.db $ff                                                  ; $d10a : $ff
	.db $ff                                                  ; $d10b : $ff
	.db $ff                                                  ; $d10c : $ff
	.db $ff                                                  ; $d10d : $ff
	.db $ff                                                  ; $d10e : $ff
	.db $ff                                                  ; $d10f : $ff
	.db $ff                                                  ; $d110 : $ff
	.db $ff                                                  ; $d111 : $ff
	.db $ff                                                  ; $d112 : $ff
	.db $ff                                                  ; $d113 : $ff
	.db $ff                                                  ; $d114 : $ff
	.db $ff                                                  ; $d115 : $ff
	.db $ff                                                  ; $d116 : $ff
	.db $ff                                                  ; $d117 : $ff
	.db $ff                                                  ; $d118 : $ff
	.db $ff                                                  ; $d119 : $ff
	.db $ff                                                  ; $d11a : $ff
	.db $ff                                                  ; $d11b : $ff
	.db $ff                                                  ; $d11c : $ff
	.db $ff                                                  ; $d11d : $ff
	.db $ff                                                  ; $d11e : $ff
	.db $ff                                                  ; $d11f : $ff
	.db $ff                                                  ; $d120 : $ff
	.db $ff                                                  ; $d121 : $ff
	.db $ff                                                  ; $d122 : $ff
	.db $ff                                                  ; $d123 : $ff
	.db $ff                                                  ; $d124 : $ff
	.db $ff                                                  ; $d125 : $ff
	.db $ff                                                  ; $d126 : $ff
	.db $ff                                                  ; $d127 : $ff
	.db $ff                                                  ; $d128 : $ff
	.db $ff                                                  ; $d129 : $ff
	.db $ff                                                  ; $d12a : $ff
	.db $ff                                                  ; $d12b : $ff
	.db $ff                                                  ; $d12c : $ff
	.db $ff                                                  ; $d12d : $ff
	.db $ff                                                  ; $d12e : $ff
	.db $ff                                                  ; $d12f : $ff
	.db $ff                                                  ; $d130 : $ff
	.db $ff                                                  ; $d131 : $ff
	.db $ff                                                  ; $d132 : $ff
	.db $ff                                                  ; $d133 : $ff
	.db $ff                                                  ; $d134 : $ff
	.db $ff                                                  ; $d135 : $ff
	.db $ff                                                  ; $d136 : $ff
	.db $ff                                                  ; $d137 : $ff
	.db $ff                                                  ; $d138 : $ff
	.db $ff                                                  ; $d139 : $ff
	.db $ff                                                  ; $d13a : $ff
	.db $ff                                                  ; $d13b : $ff
	.db $ff                                                  ; $d13c : $ff
	.db $ff                                                  ; $d13d : $ff
	.db $ff                                                  ; $d13e : $ff
	.db $ff                                                  ; $d13f : $ff
	.db $ff                                                  ; $d140 : $ff
	.db $ff                                                  ; $d141 : $ff
	.db $ff                                                  ; $d142 : $ff
	.db $ff                                                  ; $d143 : $ff
	.db $ff                                                  ; $d144 : $ff
	.db $ff                                                  ; $d145 : $ff
	.db $ff                                                  ; $d146 : $ff
	.db $ff                                                  ; $d147 : $ff
	.db $ff                                                  ; $d148 : $ff
	.db $ff                                                  ; $d149 : $ff
	.db $ff                                                  ; $d14a : $ff
	.db $ff                                                  ; $d14b : $ff
	.db $ff                                                  ; $d14c : $ff
	.db $ff                                                  ; $d14d : $ff
	.db $ff                                                  ; $d14e : $ff
	.db $ff                                                  ; $d14f : $ff
	.db $ff                                                  ; $d150 : $ff
	.db $ff                                                  ; $d151 : $ff
	.db $ff                                                  ; $d152 : $ff
	.db $ff                                                  ; $d153 : $ff
	.db $ff                                                  ; $d154 : $ff
	.db $ff                                                  ; $d155 : $ff
	.db $ff                                                  ; $d156 : $ff
	.db $ff                                                  ; $d157 : $ff
	.db $ff                                                  ; $d158 : $ff
	.db $ff                                                  ; $d159 : $ff
	.db $ff                                                  ; $d15a : $ff
	.db $ff                                                  ; $d15b : $ff
	.db $ff                                                  ; $d15c : $ff
	.db $ff                                                  ; $d15d : $ff
	.db $ff                                                  ; $d15e : $ff
	.db $ff                                                  ; $d15f : $ff
	.db $ff                                                  ; $d160 : $ff
	.db $ff                                                  ; $d161 : $ff
	.db $ff                                                  ; $d162 : $ff
	.db $ff                                                  ; $d163 : $ff
	.db $ff                                                  ; $d164 : $ff
	.db $ff                                                  ; $d165 : $ff
	.db $ff                                                  ; $d166 : $ff
	.db $ff                                                  ; $d167 : $ff
	.db $ff                                                  ; $d168 : $ff
	.db $ff                                                  ; $d169 : $ff
	.db $ff                                                  ; $d16a : $ff
	.db $ff                                                  ; $d16b : $ff
	.db $ff                                                  ; $d16c : $ff
	.db $ff                                                  ; $d16d : $ff
	.db $ff                                                  ; $d16e : $ff
	.db $ff                                                  ; $d16f : $ff
	.db $ff                                                  ; $d170 : $ff
	.db $ff                                                  ; $d171 : $ff
	.db $ff                                                  ; $d172 : $ff
	.db $ff                                                  ; $d173 : $ff
	.db $ff                                                  ; $d174 : $ff
	.db $ff                                                  ; $d175 : $ff
	.db $ff                                                  ; $d176 : $ff
	.db $ff                                                  ; $d177 : $ff
	.db $ff                                                  ; $d178 : $ff
	.db $ff                                                  ; $d179 : $ff
	.db $ff                                                  ; $d17a : $ff
	.db $ff                                                  ; $d17b : $ff
	.db $ff                                                  ; $d17c : $ff
	.db $ff                                                  ; $d17d : $ff
	.db $ff                                                  ; $d17e : $ff
	.db $ff                                                  ; $d17f : $ff
	.db $ff                                                  ; $d180 : $ff
	.db $ff                                                  ; $d181 : $ff
	.db $ff                                                  ; $d182 : $ff
	.db $ff                                                  ; $d183 : $ff
	.db $ff                                                  ; $d184 : $ff
	.db $ff                                                  ; $d185 : $ff
	.db $ff                                                  ; $d186 : $ff
	.db $ff                                                  ; $d187 : $ff
	.db $ff                                                  ; $d188 : $ff
	.db $ff                                                  ; $d189 : $ff
	.db $ff                                                  ; $d18a : $ff
	.db $ff                                                  ; $d18b : $ff
	.db $ff                                                  ; $d18c : $ff
	.db $ff                                                  ; $d18d : $ff
	.db $ff                                                  ; $d18e : $ff
	.db $ff                                                  ; $d18f : $ff
	.db $ff                                                  ; $d190 : $ff
	.db $ff                                                  ; $d191 : $ff
	.db $ff                                                  ; $d192 : $ff
	.db $ff                                                  ; $d193 : $ff
	.db $ff                                                  ; $d194 : $ff
	.db $ff                                                  ; $d195 : $ff
	.db $ff                                                  ; $d196 : $ff
	.db $ff                                                  ; $d197 : $ff
	.db $ff                                                  ; $d198 : $ff
	.db $ff                                                  ; $d199 : $ff
	.db $ff                                                  ; $d19a : $ff
	.db $ff                                                  ; $d19b : $ff
	.db $ff                                                  ; $d19c : $ff
	.db $ff                                                  ; $d19d : $ff
	.db $ff                                                  ; $d19e : $ff
	.db $ff                                                  ; $d19f : $ff
	.db $ff                                                  ; $d1a0 : $ff
	.db $ff                                                  ; $d1a1 : $ff
	.db $ff                                                  ; $d1a2 : $ff
	.db $ff                                                  ; $d1a3 : $ff
	.db $ff                                                  ; $d1a4 : $ff
	.db $ff                                                  ; $d1a5 : $ff
	.db $ff                                                  ; $d1a6 : $ff
	.db $ff                                                  ; $d1a7 : $ff
	.db $ff                                                  ; $d1a8 : $ff
	.db $ff                                                  ; $d1a9 : $ff
	.db $ff                                                  ; $d1aa : $ff
	.db $ff                                                  ; $d1ab : $ff
	.db $ff                                                  ; $d1ac : $ff
	.db $ff                                                  ; $d1ad : $ff
	.db $ff                                                  ; $d1ae : $ff
	.db $ff                                                  ; $d1af : $ff
	.db $ff                                                  ; $d1b0 : $ff
	.db $ff                                                  ; $d1b1 : $ff
	.db $ff                                                  ; $d1b2 : $ff
	.db $ff                                                  ; $d1b3 : $ff
	.db $ff                                                  ; $d1b4 : $ff
	.db $ff                                                  ; $d1b5 : $ff
	.db $ff                                                  ; $d1b6 : $ff
	.db $ff                                                  ; $d1b7 : $ff
	.db $ff                                                  ; $d1b8 : $ff
	.db $ff                                                  ; $d1b9 : $ff
	.db $ff                                                  ; $d1ba : $ff
	.db $ff                                                  ; $d1bb : $ff
	.db $ff                                                  ; $d1bc : $ff
	.db $ff                                                  ; $d1bd : $ff
	.db $ff                                                  ; $d1be : $ff
	.db $ff                                                  ; $d1bf : $ff
	.db $ff                                                  ; $d1c0 : $ff
	.db $ff                                                  ; $d1c1 : $ff
	.db $ff                                                  ; $d1c2 : $ff
	.db $ff                                                  ; $d1c3 : $ff
	.db $ff                                                  ; $d1c4 : $ff
	.db $ff                                                  ; $d1c5 : $ff
	.db $ff                                                  ; $d1c6 : $ff
	.db $ff                                                  ; $d1c7 : $ff
	.db $ff                                                  ; $d1c8 : $ff
	.db $ff                                                  ; $d1c9 : $ff
	.db $ff                                                  ; $d1ca : $ff
	.db $ff                                                  ; $d1cb : $ff
	.db $ff                                                  ; $d1cc : $ff
	.db $ff                                                  ; $d1cd : $ff
	.db $ff                                                  ; $d1ce : $ff
	.db $ff                                                  ; $d1cf : $ff
	.db $ff                                                  ; $d1d0 : $ff
	.db $ff                                                  ; $d1d1 : $ff
	.db $ff                                                  ; $d1d2 : $ff
	.db $ff                                                  ; $d1d3 : $ff
	.db $ff                                                  ; $d1d4 : $ff
	.db $ff                                                  ; $d1d5 : $ff
	.db $ff                                                  ; $d1d6 : $ff
	.db $ff                                                  ; $d1d7 : $ff
	.db $ff                                                  ; $d1d8 : $ff
	.db $ff                                                  ; $d1d9 : $ff
	.db $ff                                                  ; $d1da : $ff
	.db $ff                                                  ; $d1db : $ff
	.db $ff                                                  ; $d1dc : $ff
	.db $ff                                                  ; $d1dd : $ff
	.db $ff                                                  ; $d1de : $ff
	.db $ff                                                  ; $d1df : $ff
	.db $ff                                                  ; $d1e0 : $ff
	.db $ff                                                  ; $d1e1 : $ff
	.db $ff                                                  ; $d1e2 : $ff
	.db $ff                                                  ; $d1e3 : $ff
	.db $ff                                                  ; $d1e4 : $ff
	.db $ff                                                  ; $d1e5 : $ff
	.db $ff                                                  ; $d1e6 : $ff
	.db $ff                                                  ; $d1e7 : $ff
	.db $ff                                                  ; $d1e8 : $ff
	.db $ff                                                  ; $d1e9 : $ff
	.db $ff                                                  ; $d1ea : $ff
	.db $ff                                                  ; $d1eb : $ff
	.db $ff                                                  ; $d1ec : $ff
	.db $ff                                                  ; $d1ed : $ff
	.db $ff                                                  ; $d1ee : $ff
	.db $ff                                                  ; $d1ef : $ff
	.db $ff                                                  ; $d1f0 : $ff
	.db $ff                                                  ; $d1f1 : $ff
	.db $ff                                                  ; $d1f2 : $ff
	.db $ff                                                  ; $d1f3 : $ff
	.db $ff                                                  ; $d1f4 : $ff
	.db $ff                                                  ; $d1f5 : $ff
	.db $ff                                                  ; $d1f6 : $ff
	.db $ff                                                  ; $d1f7 : $ff
	.db $ff                                                  ; $d1f8 : $ff
	.db $ff                                                  ; $d1f9 : $ff
	.db $ff                                                  ; $d1fa : $ff
	.db $ff                                                  ; $d1fb : $ff
	.db $ff                                                  ; $d1fc : $ff
	.db $ff                                                  ; $d1fd : $ff
	.db $ff                                                  ; $d1fe : $ff
	.db $ff                                                  ; $d1ff : $ff