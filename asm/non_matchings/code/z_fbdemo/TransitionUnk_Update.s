glabel TransitionUnk_Update
/* B29454 800B22B4 27BDFFE8 */  addiu $sp, $sp, -0x18
/* B29458 800B22B8 F7B60010 */  sdc1  $f22, 0x10($sp)
/* B2945C 800B22BC F7B40008 */  sdc1  $f20, 8($sp)
/* B29460 800B22C0 8C830004 */  lw    $v1, 4($a0)
/* B29464 800B22C4 00001025 */  move  $v0, $zero
/* B29468 800B22C8 3C013F80 */  li    $at, 0x3F800000 # 0.000000
/* B2946C 800B22CC 24630001 */  addiu $v1, $v1, 1
/* B29470 800B22D0 58600042 */  blezl $v1, .L800B23DC
/* B29474 800B22D4 D7B40008 */   ldc1  $f20, 8($sp)
/* B29478 800B22D8 8C860000 */  lw    $a2, ($a0)
/* B2947C 800B22DC 4481B000 */  mtc1  $at, $f22
/* B29480 800B22E0 3C0142C8 */  li    $at, 0x42C80000 # 0.000000
/* B29484 800B22E4 44819000 */  mtc1  $at, $f18
/* B29488 800B22E8 4480A000 */  mtc1  $zero, $f20
/* B2948C 800B22EC 24C70001 */  addiu $a3, $a2, 1
.L800B22F0:
/* B29490 800B22F0 18E00035 */  blez  $a3, .L800B23C8
/* B29494 800B22F4 00002825 */   move  $a1, $zero
/* B29498 800B22F8 00004025 */  move  $t0, $zero
.L800B22FC:
/* B2949C 800B22FC 00470019 */  multu $v0, $a3
/* B294A0 800B2300 8C83000C */  lw    $v1, 0xc($a0)
/* B294A4 800B2304 0006C940 */  sll   $t9, $a2, 5
/* B294A8 800B2308 24A50001 */  addiu $a1, $a1, 1
/* B294AC 800B230C 00687021 */  addu  $t6, $v1, $t0
/* B294B0 800B2310 00795021 */  addu  $t2, $v1, $t9
/* B294B4 800B2314 C5440048 */  lwc1  $f4, 0x48($t2)
/* B294B8 800B2318 C548004C */  lwc1  $f8, 0x4c($t2)
/* B294BC 800B231C 00007812 */  mflo  $t7
/* B294C0 800B2320 000FC0C0 */  sll   $t8, $t7, 3
/* B294C4 800B2324 01D84821 */  addu  $t1, $t6, $t8
/* B294C8 800B2328 C5220000 */  lwc1  $f2, ($t1)
/* B294CC 800B232C C5260004 */  lwc1  $f6, 4($t1)
/* B294D0 800B2330 46041001 */  sub.s $f0, $f2, $f4
/* B294D4 800B2334 46083301 */  sub.s $f12, $f6, $f8
/* B294D8 800B2338 46000282 */  mul.s $f10, $f0, $f0
/* B294DC 800B233C 00000000 */  nop
/* B294E0 800B2340 460C6102 */  mul.s $f4, $f12, $f12
/* B294E4 800B2344 46045180 */  add.s $f6, $f10, $f4
/* B294E8 800B2348 46123403 */  div.s $f16, $f6, $f18
/* B294EC 800B234C 4610A032 */  c.eq.s $f20, $f16
/* B294F0 800B2350 46008386 */  mov.s $f14, $f16
/* B294F4 800B2354 45010017 */  bc1t  .L800B23B4
/* B294F8 800B2358 00000000 */   nop
/* B294FC 800B235C 4616803C */  c.lt.s $f16, $f22
/* B29500 800B2360 00000000 */  nop
/* B29504 800B2364 45020003 */  bc1fl .L800B2374
/* B29508 800B2368 460E0203 */   div.s $f8, $f0, $f14
/* B2950C 800B236C 4600B386 */  mov.s $f14, $f22
/* B29510 800B2370 460E0203 */  div.s $f8, $f0, $f14
.L800B2374:
/* B29514 800B2374 460E6183 */  div.s $f6, $f12, $f14
/* B29518 800B2378 46081281 */  sub.s $f10, $f2, $f8
/* B2951C 800B237C E52A0000 */  swc1  $f10, ($t1)
/* B29520 800B2380 8C8D0000 */  lw    $t5, ($a0)
/* B29524 800B2384 8C8B000C */  lw    $t3, 0xc($a0)
/* B29528 800B2388 25AF0001 */  addiu $t7, $t5, 1
/* B2952C 800B238C 004F0019 */  multu $v0, $t7
/* B29530 800B2390 01686021 */  addu  $t4, $t3, $t0
/* B29534 800B2394 00007012 */  mflo  $t6
/* B29538 800B2398 000EC0C0 */  sll   $t8, $t6, 3
/* B2953C 800B239C 01984821 */  addu  $t1, $t4, $t8
/* B29540 800B23A0 C5240004 */  lwc1  $f4, 4($t1)
/* B29544 800B23A4 46062201 */  sub.s $f8, $f4, $f6
/* B29548 800B23A8 E5280004 */  swc1  $f8, 4($t1)
/* B2954C 800B23AC 8C860000 */  lw    $a2, ($a0)
/* B29550 800B23B0 24C70001 */  addiu $a3, $a2, 1
.L800B23B4:
/* B29554 800B23B4 00A7082A */  slt   $at, $a1, $a3
/* B29558 800B23B8 1420FFD0 */  bnez  $at, .L800B22FC
/* B2955C 800B23BC 25080008 */   addiu $t0, $t0, 8
/* B29560 800B23C0 8C830004 */  lw    $v1, 4($a0)
/* B29564 800B23C4 24630001 */  addiu $v1, $v1, 1
.L800B23C8:
/* B29568 800B23C8 24420001 */  addiu $v0, $v0, 1
/* B2956C 800B23CC 0043082A */  slt   $at, $v0, $v1
/* B29570 800B23D0 1420FFC7 */  bnez  $at, .L800B22F0
/* B29574 800B23D4 00000000 */   nop
/* B29578 800B23D8 D7B40008 */  ldc1  $f20, 8($sp)
.L800B23DC:
/* B2957C 800B23DC D7B60010 */  ldc1  $f22, 0x10($sp)
/* B29580 800B23E0 03E00008 */  jr    $ra
/* B29584 800B23E4 27BD0018 */   addiu $sp, $sp, 0x18
