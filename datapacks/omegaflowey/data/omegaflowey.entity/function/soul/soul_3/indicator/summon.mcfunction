# LINK: /omegaflowey.entity:soul/soul_3/indicator/initialize.mcfunction
execute if score #omegaflowey.soul.3.book.is_eastward omegaflowey.soul.flag matches 0 rotated ~180 ~ run \
  function animated_java:soul_3_book/summon { args: {} }
execute if score #omegaflowey.soul.3.book.is_eastward omegaflowey.soul.flag matches 1 rotated ~ ~ run \
  function animated_java:soul_3_book/summon { args: {} }
