.set noat      # allow manual use of $at
.set noreorder # don't insert nops after branches


glabel func_004000B0
/* 0000B0 004000B0 03E00008 */  jr    $ra
/* 0000B4 004000B4 AFA40000 */   sw    $a0, ($sp)

glabel test
/* 0000B8 004000B8 27BDFFE0 */  addiu $sp, $sp, -0x20
/* 0000BC 004000BC 3C0E0040 */  lui   $t6, %hi(D_400150)
/* 0000C0 004000C0 AFBF0014 */  sw    $ra, 0x14($sp)
/* 0000C4 004000C4 25CE0150 */  addiu $t6, $t6, %lo(D_400150)
/* 0000C8 004000C8 8DC10000 */  lw    $at, ($t6)
/* 0000CC 004000CC 27A40018 */  addiu $a0, $sp, 0x18
/* 0000D0 004000D0 AC810000 */  sw    $at, ($a0)
/* 0000D4 004000D4 99C10006 */  lwr   $at, 6($t6)
/* 0000D8 004000D8 0C10002C */  jal   func_004000B0
/* 0000DC 004000DC B8810006 */   swr   $at, 6($a0)
/* 0000E0 004000E0 3C010041 */  lui   $at, %hi(D_410169)
/* 0000E4 004000E4 24210169 */  addiu $at, $at, %lo(D_410169)
/* 0000E8 004000E8 88280000 */  lwl   $t0, ($at)
/* 0000EC 004000EC 98280003 */  lwr   $t0, 3($at)
/* 0000F0 004000F0 3C010041 */  lui   $at, %hi(D_410161)
/* 0000F4 004000F4 24210161 */  addiu $at, $at, %lo(D_410161)
/* 0000F8 004000F8 3C0A0041 */  lui   $t2, %hi(D_410160)
/* 0000FC 004000FC A8280000 */  swl   $t0, ($at)
/* 000100 00400100 254A0160 */  addiu $t2, $t2, %lo(D_410160)
/* 000104 00400104 B8280003 */  swr   $t0, 3($at)
/* 000108 00400108 8D410000 */  lw    $at, ($t2)
/* 00010C 0040010C 3C090041 */  lui   $t1, %hi(D_410170)
/* 000110 00400110 25290170 */  addiu $t1, $t1, %lo(D_410170)
/* 000114 00400114 A9210000 */  swl   $at, ($t1)
/* 000118 00400118 B9210003 */  swr   $at, 3($t1)
/* 00011C 0040011C 91410004 */  lbu   $at, 4($t2)
/* 000120 00400120 A1210004 */  sb    $at, 4($t1)
/* 000124 00400124 3C010040 */  lui   $at, %hi(D_400158)
/* 000128 00400128 24210158 */  addiu $at, $at, %lo(D_400158)
/* 00012C 0040012C 88380000 */  lwl   $t8, ($at)
/* 000130 00400130 8FBF0014 */  lw    $ra, 0x14($sp)
/* 000134 00400134 98380003 */  lwr   $t8, 3($at)
/* 000138 00400138 3C010041 */  lui   $at, %hi(D_410178)
/* 00013C 0040013C 27BD0020 */  addiu $sp, $sp, 0x20
/* 000140 00400140 03E00008 */  jr    $ra
/* 000144 00400144 AC380178 */   sw    $t8, %lo(D_410178)($at)

/* 000148 00400148 00000000 */  nop
/* 00014C 0040014C 00000000 */  nop