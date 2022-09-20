.define PPUCTRL $2000
.define PPUCTRL_NMI $80
.define PPUCTRL_BG1000 $10
.define PPUCTRL_SPR16 $20

.define PPUMASK $2001
.define PPUMASK_SPRON $10
.define PPUMASK_BGON $08
.define PPUMASK_SPRLEFT8 $04
.define PPUMASK_BGLEFT8 $02

.define PPUSTATUS $2002
.define OAMADDR $2003
.define PPUSCROLL $2005
.define PPUADDR $2006
.define PPUDATA $2007

.define SQ1_VOL $4000
.define SQ1_SWEEP $4001
.define SQ1_LO $4002
.define SQ1_HI $4003
.define SQ2_VOL $4004
.define SQ2_SWEEP $4005
.define SQ2_LO $4006
.define SQ2_HI $4007
.define TRI_LINEAR $4008
.define TRI_LO $400a
.define TRI_HI $400b
.define NOISE_VOL $400c
.define NOISE_LO $400e
.define NOISE_HI $400f
.define DMC_FREQ $4010
.define DMC_RAW $4011
.define OAMDMA $4014
.define SND_CHN $4015
.define JOY1 $4016
.define JOY2 $4017
.define FRAME_COUNTER_CTRL $4017

.define NAMETABLE0 $2000
.define NAMETABLE0_PAL $23c0
.define NAMETABLE1 $2400
.define NAMETABLE1_PAL $27c0
.define NAMETABLE2 $2800
.define NAMETABLE3 $2c00
.define INTERNAL_PALETTES $3f00