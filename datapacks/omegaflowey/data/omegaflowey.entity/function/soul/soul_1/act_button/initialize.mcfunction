tag @s add soul_1

function gu:generate
data modify storage omegaflowey:soul.1 act_button_uuid set from storage gu:main out
data modify storage omegaflowey:soul.1.indicator latest_glove set from storage gu:main out

function animated_java:omegaflowey_act_button/as_all_locators { \
  command: 'function omegaflowey.entity:soul/soul_1/act_button/initialize/locator' \
}
