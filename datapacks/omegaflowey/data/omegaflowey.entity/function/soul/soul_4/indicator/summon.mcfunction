# LINK: /omegaflowey.entity:soul/soul_4/indicator/initialize.mcfunction
execute if score #omegaflowey.soul.4.book.is_eastward omegaflowey.soul.flag matches 0 rotated ~180 ~ run \
  function animated_java:omegaflowey_soul_4_book/summon { args: {} }
execute if score #omegaflowey.soul.4.book.is_eastward omegaflowey.soul.flag matches 1 rotated ~ ~ run \
  function animated_java:omegaflowey_soul_4_book/summon { args: {} }
