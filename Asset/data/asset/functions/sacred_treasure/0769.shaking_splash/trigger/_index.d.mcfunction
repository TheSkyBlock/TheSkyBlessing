#> asset:sacred_treasure/0769.shaking_splash/trigger/_index.d
# @private

#> 弾に持たせるTag
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
#   asset:sacred_treasure/0769.shaking_splash/trigger/rejoin_process
#   asset:sacred_treasure/0769.shaking_splash/trigger/bullet/loop
    #declare tag LD.Bullet

#> Init Tag
# @within function asset:sacred_treasure/0769.shaking_splash/trigger/4.shoot
    #declare tag LD.Init

#> ビームで使うTag
# @within function
#   asset:sacred_treasure/0769.shaking_splash/trigger/5.beam
#   asset:sacred_treasure/0769.shaking_splash/trigger/beam_recursive
    #declare tag LandingTarget
