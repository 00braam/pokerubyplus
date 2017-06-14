	.include "constants/gba_constants.inc"
	.include "constants/species_constants.inc"
	.include "asm/macros.inc"

	.syntax unified

	.text

	thumb_func_start sub_8092810
sub_8092810: @ 8092810
	push {r4-r7,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r1, 24
	mov r12, r1
	lsls r2, 24
	lsrs r1, r2, 24
	lsls r3, 24
	lsrs r5, r3, 8
	movs r3, 0
	cmp r5, 0
	beq _0809285A
	lsls r7, r1, 6
	ldr r6, _08092860 @ =0x00000fff
	lsls r4, r0, 12
_08092830:
	mov r0, r12
	adds r1, r0, r3
	lsls r1, 1
	adds r1, r7, r1
	ldr r0, _08092864 @ =0x06007800
	adds r2, r1, r0
	ldrh r0, [r2]
	ands r0, r6
	orrs r0, r4
	strh r0, [r2]
	ldr r0, _08092868 @ =0x06007840
	adds r1, r0
	ldrh r0, [r1]
	ands r0, r6
	orrs r0, r4
	strh r0, [r1]
	adds r0, r3, 0x1
	lsls r0, 16
	lsrs r3, r0, 16
	cmp r0, r5
	bcc _08092830
_0809285A:
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092860: .4byte 0x00000fff
_08092864: .4byte 0x06007800
_08092868: .4byte 0x06007840
	thumb_func_end sub_8092810

	thumb_func_start sub_809286C
sub_809286C: @ 809286C
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	lsls r1, 24
	lsrs r5, r1, 24
	lsls r2, 24
	lsrs r2, 24
	movs r0, 0x1
	ands r5, r0
	ands r2, r0
	lsls r2, 1
	orrs r5, r2
	cmp r4, 0xA
	bhi _08092958
	lsls r0, r4, 2
	ldr r1, _08092894 @ =_08092898
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092894: .4byte _08092898
	.align 2, 0
_08092898:
	.4byte _080928C4
	.4byte _080928C4
	.4byte _080928C4
	.4byte _080928D4
	.4byte _080928D4
	.4byte _080928EC
	.4byte _080928EC
	.4byte _080928D4
	.4byte _080928D4
	.4byte _08092914
	.4byte _08092904
_080928C4:
	ldr r1, _080928D0 @ =gUnknown_083B57E4
	lsls r0, r4, 3
	adds r0, r1
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	b _08092932
	.align 2, 0
_080928D0: .4byte gUnknown_083B57E4
_080928D4:
	ldr r2, _08092900 @ =gUnknown_083B57FC
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	ldrb r3, [r0, 0x6]
	adds r0, r5, 0
	bl sub_8092810
_080928EC:
	ldr r2, _08092900 @ =gUnknown_083B57FC
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x7]
	ldrb r2, [r0, 0x8]
	ldrb r3, [r0, 0x9]
	b _08092934
	.align 2, 0
_08092900: .4byte gUnknown_083B57FC
_08092904:
	ldr r0, _08092910 @ =gUnknown_083B57FC
	ldrb r1, [r0, 0x1C]
	ldrb r2, [r0, 0x1D]
	ldrb r3, [r0, 0x1E]
	b _08092934
	.align 2, 0
_08092910: .4byte gUnknown_083B57FC
_08092914:
	bl IsNationalPokedexEnabled
	cmp r0, 0
	bne _08092940
	ldr r2, _0809293C @ =gUnknown_083B57FC
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	subs r2, 0x2
	lsls r2, 24
	lsrs r2, 24
_08092932:
	ldrb r3, [r0, 0x6]
_08092934:
	adds r0, r5, 0
	bl sub_8092810
	b _08092958
	.align 2, 0
_0809293C: .4byte gUnknown_083B57FC
_08092940:
	ldr r2, _08092960 @ =gUnknown_083B57FC
	subs r1, r4, 0x3
	lsls r0, r1, 1
	adds r0, r1
	lsls r0, 2
	adds r0, r2
	ldrb r1, [r0, 0x4]
	ldrb r2, [r0, 0x5]
	ldrb r3, [r0, 0x6]
	adds r0, r5, 0
	bl sub_8092810
_08092958:
	pop {r4,r5}
	pop {r0}
	bx r0
	.align 2, 0
_08092960: .4byte gUnknown_083B57FC
	thumb_func_end sub_809286C

	thumb_func_start sub_8092964
sub_8092964: @ 8092964
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	adds r1, r0, 0
	cmp r0, 0x1
	beq _080929CE
	cmp r0, 0x1
	bgt _0809297A
	cmp r0, 0
	beq _08092980
	b _08092AAC
_0809297A:
	cmp r1, 0x2
	beq _08092A3E
	b _08092AAC
_08092980:
	movs r0, 0
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0
	b _08092A1A
_080929CE:
	movs r0, 0
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0x1
_08092A1A:
	bl sub_809286C
	movs r0, 0x7
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x8
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x9
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	b _08092AAC
_08092A3E:
	movs r0, 0
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x1
	movs r1, 0x1
	movs r2, 0
	bl sub_809286C
	movs r0, 0x2
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x3
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x4
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0xA
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x5
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x6
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x7
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x8
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
	movs r0, 0x9
	movs r1, 0x1
	movs r2, 0x1
	bl sub_809286C
_08092AAC:
	pop {r0}
	bx r0
	thumb_func_end sub_8092964

	thumb_func_start sub_8092AB0
sub_8092AB0: @ 8092AB0
	push {r4,lr}
	adds r4, r0, 0
	lsls r4, 24
	lsrs r4, 24
	adds r0, r4, 0
	bl sub_8092964
	ldr r0, _08092AD0 @ =gUnknown_083B57E4
	lsls r4, 3
	adds r4, r0
	ldr r0, [r4]
	bl sub_8091E20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08092AD0: .4byte gUnknown_083B57E4
	thumb_func_end sub_8092AB0

	thumb_func_start sub_8092AD4
sub_8092AD4: @ 8092AD4
	push {r4,lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r4, r1, 24
	bl sub_8092964
	cmp r4, 0x6
	bhi _08092B4E
	lsls r0, r4, 2
	ldr r1, _08092AF0 @ =_08092AF4
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092AF0: .4byte _08092AF4
	.align 2, 0
_08092AF4:
	.4byte _08092B10
	.4byte _08092B14
	.4byte _08092B18
	.4byte _08092B26
	.4byte _08092B34
	.4byte _08092B38
	.4byte _08092B44
_08092B10:
	movs r0, 0x3
	b _08092B3A
_08092B14:
	movs r0, 0x4
	b _08092B3A
_08092B18:
	movs r0, 0xA
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x5
	b _08092B3A
_08092B26:
	movs r0, 0xA
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	movs r0, 0x6
	b _08092B3A
_08092B34:
	movs r0, 0x7
	b _08092B3A
_08092B38:
	movs r0, 0x8
_08092B3A:
	movs r1, 0
	movs r2, 0
	bl sub_809286C
	b _08092B4E
_08092B44:
	movs r0, 0x9
	movs r1, 0
	movs r2, 0
	bl sub_809286C
_08092B4E:
	ldr r0, _08092B64 @ =gUnknown_083B57FC
	lsls r1, r4, 1
	adds r1, r4
	lsls r1, 2
	adds r1, r0
	ldr r0, [r1]
	bl sub_8091E20
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08092B64: .4byte gUnknown_083B57FC
	thumb_func_end sub_8092AD4

	thumb_func_start sub_8092B68
sub_8092B68: @ 8092B68
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	ldr r2, _08092C68 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r6, r1, r2
	ldrh r0, [r6, 0x16]
	ldrh r1, [r6, 0x14]
	adds r0, r1
	lsls r0, 16
	ldr r7, _08092C6C @ =gStringVar1
	ldr r1, _08092C70 @ =gUnknown_083B5910
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	ldr r0, _08092C74 @ =gUnknown_083B5AB2
	mov r8, r0
	movs r1, 0x2D
	movs r2, 0x10
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	ldrh r0, [r6, 0x1A]
	ldrh r1, [r6, 0x18]
	adds r0, r1
	lsls r0, 16
	ldr r1, _08092C78 @ =gUnknown_083B5968
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x20
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	ldrh r0, [r6, 0x1E]
	ldrh r1, [r6, 0x1C]
	adds r0, r1
	lsls r0, 16
	ldr r4, _08092C7C @ =gUnknown_083B59C8
	lsrs r0, 13
	adds r4, 0x4
	adds r0, r4
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	ldr r5, _08092C80 @ =gUnknown_083B5AAC
	adds r0, r5, 0
	movs r1, 0x2D
	movs r2, 0x30
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	ldrh r0, [r6, 0x22]
	ldrh r1, [r6, 0x20]
	adds r0, r1
	lsls r0, 16
	lsrs r0, 13
	adds r0, r4
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	adds r0, r5, 0
	movs r1, 0x5D
	movs r2, 0x30
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	ldrh r0, [r6, 0x12]
	ldrh r1, [r6, 0x10]
	adds r0, r1
	lsls r0, 16
	ldr r1, _08092C84 @ =gUnknown_083B58D8
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x40
	movs r3, 0x1
	bl MenuPrint_PixelCoords
	bl IsNationalPokedexEnabled
	cmp r0, 0
	beq _08092C5E
	ldrh r0, [r6, 0xE]
	ldrh r6, [r6, 0xC]
	adds r0, r6
	lsls r0, 16
	ldr r1, _08092C88 @ =gUnknown_083B58C0
	lsrs r0, 13
	adds r1, 0x4
	adds r0, r1
	ldr r1, [r0]
	adds r0, r7, 0
	bl StringCopy
	mov r0, r8
	movs r1, 0x2D
	movs r2, 0x50
	movs r3, 0x1
	bl MenuPrint_PixelCoords
_08092C5E:
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	.align 2, 0
_08092C68: .4byte gTasks
_08092C6C: .4byte gStringVar1
_08092C70: .4byte gUnknown_083B5910
_08092C74: .4byte gUnknown_083B5AB2
_08092C78: .4byte gUnknown_083B5968
_08092C7C: .4byte gUnknown_083B59C8
_08092C80: .4byte gUnknown_083B5AAC
_08092C84: .4byte gUnknown_083B58D8
_08092C88: .4byte gUnknown_083B58C0
	thumb_func_end sub_8092B68

	thumb_func_start sub_8092C8C
sub_8092C8C: @ 8092C8C
	push {r4-r6,lr}
	lsls r0, 24
	cmp r0, 0
	bne _08092D48
	ldr r1, _08092D1C @ =0x06007822
	ldr r2, _08092D20 @ =0x00000c0b
	adds r0, r2, 0
	strh r0, [r1]
	movs r1, 0x12
	ldr r3, _08092D24 @ =0x06007800
	ldr r4, _08092D28 @ =0x0000080d
	adds r2, r4, 0
_08092CA4:
	lsls r0, r1, 1
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092CA4
	ldr r1, _08092D2C @ =0x0600783a
	ldr r2, _08092D30 @ =0x0000080b
	adds r0, r2, 0
	strh r0, [r1]
	movs r3, 0x1
	ldr r6, _08092D24 @ =0x06007800
	movs r5, 0x2
_08092CC2:
	lsls r2, r3, 6
	ldr r4, _08092D1C @ =0x06007822
	adds r1, r2, r4
	ldr r4, _08092D34 @ =0x0000040a
	adds r0, r4, 0
	strh r0, [r1]
	movs r1, 0x12
	adds r4, r3, 0x1
	adds r3, r2, 0
_08092CD4:
	lsls r0, r1, 1
	adds r0, r3, r0
	adds r0, r6
	strh r5, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092CD4
	ldr r1, _08092D2C @ =0x0600783a
	adds r0, r2, r1
	movs r1, 0xA
	strh r1, [r0]
	lsls r0, r4, 16
	lsrs r3, r0, 16
	cmp r3, 0xC
	bls _08092CC2
	ldr r1, _08092D38 @ =0x06007b62
	ldr r2, _08092D3C @ =0x0000040b
	adds r0, r2, 0
	strh r0, [r1]
	movs r1, 0x12
	ldr r3, _08092D40 @ =0x06007b40
	movs r2, 0xD
_08092D04:
	lsls r0, r1, 1
	adds r0, r3
	strh r2, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1C
	bls _08092D04
	ldr r1, _08092D44 @ =0x06007b7a
	movs r0, 0xB
	strh r0, [r1]
	b _08092D6E
	.align 2, 0
_08092D1C: .4byte 0x06007822
_08092D20: .4byte 0x00000c0b
_08092D24: .4byte 0x06007800
_08092D28: .4byte 0x0000080d
_08092D2C: .4byte 0x0600783a
_08092D30: .4byte 0x0000080b
_08092D34: .4byte 0x0000040a
_08092D38: .4byte 0x06007b62
_08092D3C: .4byte 0x0000040b
_08092D40: .4byte 0x06007b40
_08092D44: .4byte 0x06007b7a
_08092D48:
	movs r3, 0
	ldr r6, _08092D74 @ =0x06007800
	movs r5, 0x4F
_08092D4E:
	movs r1, 0x11
	adds r4, r3, 0x1
	lsls r2, r3, 6
_08092D54:
	lsls r0, r1, 1
	adds r0, r2, r0
	adds r0, r6
	strh r5, [r0]
	adds r0, r1, 0x1
	lsls r0, 16
	lsrs r1, r0, 16
	cmp r1, 0x1D
	bls _08092D54
	lsls r0, r4, 16
	lsrs r3, r0, 16
	cmp r3, 0xD
	bls _08092D4E
_08092D6E:
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08092D74: .4byte 0x06007800
	thumb_func_end sub_8092C8C

	thumb_func_start sub_8092D78
sub_8092D78: @ 8092D78
	push {r4-r7,lr}
	mov r7, r8
	push {r7}
	lsls r0, 24
	lsrs r0, 24
	ldr r4, _08092DBC @ =gUnknown_083B5A7C
	ldr r3, _08092DC0 @ =gTasks
	lsls r2, r0, 2
	adds r2, r0
	lsls r2, 3
	adds r0, r2, r3
	movs r5, 0xA
	ldrsh r1, [r0, r5]
	lsls r1, 3
	adds r1, r4
	ldr r6, [r1]
	adds r3, 0x8
	adds r2, r3
	ldrb r0, [r1, 0x4]
	lsls r0, 1
	adds r0, r2
	mov r8, r0
	ldrb r0, [r1, 0x5]
	lsls r0, 1
	adds r7, r2, r0
	movs r0, 0x12
	movs r1, 0x1
	movs r2, 0x1C
	movs r3, 0xC
	bl MenuZeroFillWindowRect
	movs r5, 0
	ldrh r4, [r7]
	b _08092DE8
	.align 2, 0
_08092DBC: .4byte gUnknown_083B5A7C
_08092DC0: .4byte gTasks
_08092DC4:
	lsls r0, r4, 3
	adds r0, r6
	ldr r0, [r0, 0x4]
	lsls r2, r5, 1
	adds r2, 0x1
	lsls r2, 24
	lsrs r2, 24
	movs r1, 0x12
	bl MenuPrint
	adds r0, r5, 0x1
	lsls r0, 16
	lsrs r5, r0, 16
	adds r0, r4, 0x1
	lsls r0, 16
	lsrs r4, r0, 16
	cmp r5, 0x5
	bhi _08092DF2
_08092DE8:
	lsls r0, r4, 3
	adds r0, r6
	ldr r0, [r0, 0x4]
	cmp r0, 0
	bne _08092DC4
_08092DF2:
	mov r1, r8
	ldrh r0, [r1]
	ldrh r1, [r7]
	adds r0, r1
	lsls r0, 3
	adds r0, r6
	ldr r0, [r0]
	bl sub_8091E20
	pop {r3}
	mov r8, r3
	pop {r4-r7}
	pop {r0}
	bx r0
	thumb_func_end sub_8092D78

	thumb_func_start sub_8092E10
sub_8092E10: @ 8092E10
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	lsls r1, 24
	lsrs r3, r1, 24
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	ldr r0, _08092E50 @ =gTasks + 0x8
	adds r1, r0
	ldr r2, _08092E54 @ =gUnknown_083B5A7C
	lsls r0, r3, 3
	adds r0, r2
	ldrb r2, [r0, 0x4]
	lsls r2, 1
	adds r2, r1, r2
	ldrb r0, [r0, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r1]
	ldrh r2, [r2]
	adds r0, r2
	lsls r0, 16
	lsrs r2, r0, 16
	cmp r3, 0x5
	bhi _08092E74
	lsls r0, r3, 2
	ldr r1, _08092E58 @ =_08092E5C
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092E50: .4byte gTasks + 0x8
_08092E54: .4byte gUnknown_083B5A7C
_08092E58: .4byte _08092E5C
	.align 2, 0
_08092E5C:
	.4byte _08092E88
	.4byte _08092E92
	.4byte _08092EA2
	.4byte _08092EA2
	.4byte _08092E80
	.4byte _08092E78
_08092E74:
	movs r0, 0
	b _08092EA8
_08092E78:
	ldr r0, _08092E7C @ =gUnknown_083B5A60
	b _08092EA4
	.align 2, 0
_08092E7C: .4byte gUnknown_083B5A60
_08092E80:
	ldr r0, _08092E84 @ =gUnknown_083B5A62
	b _08092EA4
	.align 2, 0
_08092E84: .4byte gUnknown_083B5A62
_08092E88:
	cmp r2, 0
	beq _08092E96
	lsls r0, r2, 24
	lsrs r0, 24
	b _08092EA8
_08092E92:
	cmp r2, 0
	bne _08092E9A
_08092E96:
	movs r0, 0xFF
	b _08092EA8
_08092E9A:
	subs r0, r2, 0x1
	lsls r0, 24
	lsrs r0, 24
	b _08092EA8
_08092EA2:
	ldr r0, _08092EAC @ =gUnknown_083B5A68
_08092EA4:
	adds r0, r2, r0
	ldrb r0, [r0]
_08092EA8:
	pop {r1}
	bx r1
	.align 2, 0
_08092EAC: .4byte gUnknown_083B5A68
	thumb_func_end sub_8092E10

	thumb_func_start sub_8092EB0
sub_8092EB0: @ 8092EB0
	push {r4,r5,lr}
	lsls r0, 24
	lsrs r4, r0, 24
	ldr r1, _08092ED0 @ =gPokedexView
	ldr r0, [r1]
	ldr r2, _08092ED4 @ =0x00000614
	adds r0, r2
	ldrh r0, [r0]
	adds r5, r1, 0
	cmp r0, 0
	beq _08092ECA
	cmp r0, 0x1
	beq _08092ED8
_08092ECA:
	movs r3, 0
	b _08092EDA
	.align 2, 0
_08092ED0: .4byte gPokedexView
_08092ED4: .4byte 0x00000614
_08092ED8:
	movs r3, 0x1
_08092EDA:
	ldr r1, _08092F00 @ =gTasks
	lsls r2, r4, 2
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r1
	strh r3, [r0, 0xC]
	ldr r0, [r5]
	movs r3, 0xC3
	lsls r3, 3
	adds r0, r3
	ldrh r0, [r0]
	adds r5, r1, 0
	cmp r0, 0x5
	bhi _08092F20
	lsls r0, 2
	ldr r1, _08092F04 @ =_08092F08
	adds r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08092F00: .4byte gTasks
_08092F04: .4byte _08092F08
	.align 2, 0
_08092F08:
	.4byte _08092F20
	.4byte _08092F24
	.4byte _08092F28
	.4byte _08092F2C
	.4byte _08092F30
	.4byte _08092F34
_08092F20:
	movs r3, 0
	b _08092F36
_08092F24:
	movs r3, 0x1
	b _08092F36
_08092F28:
	movs r3, 0x2
	b _08092F36
_08092F2C:
	movs r3, 0x3
	b _08092F36
_08092F30:
	movs r3, 0x4
	b _08092F36
_08092F34:
	movs r3, 0x5
_08092F36:
	adds r0, r2, r4
	lsls r0, 3
	adds r0, r5
	strh r3, [r0, 0x10]
	pop {r4,r5}
	pop {r0}
	bx r0
	thumb_func_end sub_8092EB0

	thumb_func_start sub_8092F44
sub_8092F44: @ 8092F44
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _08092F7C @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r0, r1, r3
	ldrb r2, [r0, 0xA]
	adds r3, 0x8
	adds r1, r3
	ldr r0, _08092F80 @ =gUnknown_083B5A7C
	lsls r2, 3
	adds r2, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r2, 0x6]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _08092F84
	ldrh r0, [r1]
	cmp r0, 0
	beq _08092F84
	movs r0, 0
	b _08092F86
	.align 2, 0
_08092F7C: .4byte gTasks
_08092F80: .4byte gUnknown_083B5A7C
_08092F84:
	movs r0, 0x1
_08092F86:
	pop {r1}
	bx r1
	thumb_func_end sub_8092F44

	thumb_func_start sub_8092F8C
sub_8092F8C: @ 8092F8C
	push {lr}
	lsls r0, 24
	lsrs r0, 24
	ldr r3, _08092FC8 @ =gTasks
	lsls r1, r0, 2
	adds r1, r0
	lsls r1, 3
	adds r0, r1, r3
	ldrb r2, [r0, 0xA]
	adds r3, 0x8
	adds r1, r3
	ldr r0, _08092FCC @ =gUnknown_083B5A7C
	lsls r2, 3
	adds r2, r0
	ldrb r0, [r2, 0x5]
	lsls r0, 1
	adds r1, r0
	ldrh r0, [r2, 0x6]
	subs r0, 0x1
	lsls r0, 16
	lsrs r0, 16
	cmp r0, 0x5
	bls _08092FD0
	ldrh r1, [r1]
	subs r0, 0x5
	cmp r1, r0
	bge _08092FD0
	movs r0, 0
	b _08092FD2
	.align 2, 0
_08092FC8: .4byte gTasks
_08092FCC: .4byte gUnknown_083B5A7C
_08092FD0:
	movs r0, 0x1
_08092FD2:
	pop {r1}
	bx r1
	thumb_func_end sub_8092F8C

	thumb_func_start sub_8092FD8
sub_8092FD8: @ 8092FD8
	push {r4,lr}
	adds r4, r0, 0
	ldr r2, _08093018 @ =gTasks
	movs r0, 0x2E
	ldrsh r1, [r4, r0]
	lsls r0, r1, 2
	adds r0, r1
	lsls r0, 3
	adds r0, r2
	ldr r1, [r0]
	ldr r0, _0809301C @ =sub_8092644
	cmp r1, r0
	bne _08093078
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	cmp r0, 0
	beq _08093020
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092F8C
	lsls r0, 24
	cmp r0, 0
	beq _0809303C
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	b _08093048
	.align 2, 0
_08093018: .4byte gTasks
_0809301C: .4byte sub_8092644
_08093020:
	ldrh r0, [r4, 0x2E]
	lsls r0, 24
	lsrs r0, 24
	bl sub_8092F44
	lsls r0, 24
	cmp r0, 0
	beq _0809303C
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r0, [r2]
	movs r1, 0x4
	orrs r0, r1
	b _08093048
_0809303C:
	adds r2, r4, 0
	adds r2, 0x3E
	ldrb r1, [r2]
	movs r0, 0x5
	negs r0, r0
	ands r0, r1
_08093048:
	strb r0, [r2]
	ldrh r2, [r4, 0x32]
	movs r1, 0x30
	ldrsh r0, [r4, r1]
	lsls r0, 7
	adds r0, r2, r0
	lsls r0, 24
	ldr r1, _08093074 @ =gSineTable
	lsrs r0, 23
	adds r0, r1
	movs r1, 0
	ldrsh r0, [r0, r1]
	cmp r0, 0
	bge _08093066
	adds r0, 0x7F
_08093066:
	asrs r0, 7
	strh r0, [r4, 0x26]
	adds r0, r2, 0
	adds r0, 0x8
	strh r0, [r4, 0x32]
	b _08093084
	.align 2, 0
_08093074: .4byte gSineTable
_08093078:
	adds r0, r4, 0
	adds r0, 0x3E
	ldrb r1, [r0]
	movs r2, 0x4
	orrs r1, r2
	strb r1, [r0]
_08093084:
	pop {r4}
	pop {r0}
	bx r0
	thumb_func_end sub_8092FD8

	thumb_func_start sub_809308C
sub_809308C: @ 809308C
	push {r4-r6,lr}
	mov r6, r9
	mov r5, r8
	push {r5,r6}
	adds r5, r0, 0
	lsls r5, 24
	lsrs r5, 24
	ldr r6, _08093104 @ =gSpriteTemplate_83A053C
	adds r0, r6, 0
	movs r1, 0xB8
	movs r2, 0x4
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	ldr r4, _08093108 @ =gSprites
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r0, r1, r4
	movs r2, 0
	strh r5, [r0, 0x2E]
	strh r2, [r0, 0x30]
	movs r0, 0x1C
	adds r0, r4
	mov r9, r0
	add r1, r9
	ldr r0, _0809310C @ =sub_8092FD8
	mov r8, r0
	str r0, [r1]
	adds r0, r6, 0
	movs r1, 0xB8
	movs r2, 0x6C
	movs r3, 0
	bl CreateSprite
	lsls r0, 24
	lsrs r0, 24
	lsls r1, r0, 4
	adds r1, r0
	lsls r1, 2
	adds r4, r1, r4
	strh r5, [r4, 0x2E]
	movs r0, 0x1
	strh r0, [r4, 0x30]
	adds r4, 0x3F
	ldrb r0, [r4]
	movs r2, 0x2
	orrs r0, r2
	strb r0, [r4]
	add r1, r9
	mov r0, r8
	str r0, [r1]
	pop {r3,r4}
	mov r8, r3
	mov r9, r4
	pop {r4-r6}
	pop {r0}
	bx r0
	.align 2, 0
_08093104: .4byte gSpriteTemplate_83A053C
_08093108: .4byte gSprites
_0809310C: .4byte sub_8092FD8
	thumb_func_end sub_809308C

	.align 2, 0 @ Don't pad with nop.
