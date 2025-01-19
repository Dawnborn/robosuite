body base_link {
mass:4.0
inertiaTensor:[0.0061063308908 0.0 0.0 0.0061063308908 0.0 0.01125]
}

shape visual base_link_1 (base_link) {  
type:mesh mesh:'meshes/visual/base.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision base_link_0 (base_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/base.stl'
 contact:-2 }

body shoulder_link {
mass:7.778
inertiaTensor:[0.03147431257693659 0.0 0.0 0.03147431257693659 0.0 0.021875624999999996]
}

shape visual shoulder_link_1 (shoulder_link) {  
type:mesh mesh:'meshes/visual/shoulder.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision shoulder_link_0 (shoulder_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/shoulder.stl'
 contact:-2 }

body upper_arm_link {
mass:12.93
inertiaTensor:[0.4230737407704359 0.0 0.0 0.4230737407704359 0.0 0.03636562499999999]
}

shape visual upper_arm_link_1 (upper_arm_link) {  
type:mesh mesh:'meshes/visual/upperarm.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision upper_arm_link_0 (upper_arm_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/upperarm.stl'
 contact:-2 }

body forearm_link {
mass:3.87
inertiaTensor:[0.11059036576383598 0.0 0.0 0.11059036576383598 0.0 0.010884375]
}

shape visual forearm_link_1 (forearm_link) {  
type:mesh mesh:'meshes/visual/forearm.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision forearm_link_0 (forearm_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/forearm.stl'
 contact:-2 }

body wrist_1_link {
mass:1.96
inertiaTensor:[0.005108247956699999 0.0 0.0 0.005108247956699999 0.0 0.005512499999999999]
}

shape visual wrist_1_link_1 (wrist_1_link) {  
type:mesh mesh:'meshes/visual/wrist1.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_1_link_0 (wrist_1_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/wrist1.stl'
 contact:-2 }

body wrist_2_link {
mass:1.96
inertiaTensor:[0.005108247956699999 0.0 0.0 0.005108247956699999 0.0 0.005512499999999999]
}

shape visual wrist_2_link_1 (wrist_2_link) {  
type:mesh mesh:'meshes/visual/wrist2.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_2_link_0 (wrist_2_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/wrist2.stl'
 contact:-2 }

body wrist_3_link {
mass:0.202
inertiaTensor:[0.00014434577559500002 0.0 0.0 0.00014434577559500002 0.0 0.00020452500000000002]
}

shape visual wrist_3_link_1 (wrist_3_link) {  
type:mesh mesh:'meshes/visual/wrist3.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_3_link_0 (wrist_3_link) {  
 color:[.8 .2 .2 .5],
type:mesh mesh:'meshes/collision/wrist3.stl'
 contact:-2 }

body ee_link {
}

shape collision ee_link_0 (ee_link) {  
 color:[.8 .2 .2 .5],
Q:<t(-0.01 0 0) E(0 0 0)>
type:box size:[0.01 0.01 0.01 0]
 contact:-2 }

body base {
}

body tool0 {
}

body world {
}

joint shoulder_pan_joint (base_link shoulder_link) {  
type:hingeX
axis:[0 0 1]
A:<t(0.0 0.0 0.181) E(0.0 0.0 0.0)>
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[3.14 330.0 1]
}

joint shoulder_lift_joint (shoulder_link upper_arm_link) {  
type:hingeX
axis:[0 1 0]
A:<t(0.0 0.176 0.0) E(0.0 1.5707963267948966 0.0)>
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[3.14 330.0 1]
}

joint elbow_joint (upper_arm_link forearm_link) {  
type:hingeX
axis:[0 1 0]
A:<t(0.0 -0.137 0.613) E(0.0 0.0 0.0)>
limits:[-3.141592653589793 3.141592653589793]
ctrl_limits:[3.14 150.0 1]
}

joint wrist_1_joint (forearm_link wrist_1_link) {  
type:hingeX
axis:[0 1 0]
A:<t(0.0 0.0 0.571) E(0.0 1.5707963267948966 0.0)>
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[6.28 54.0 1]
}

joint wrist_2_joint (wrist_1_link wrist_2_link) {  
type:hingeX
axis:[0 0 1]
A:<t(0.0 0.135 0.0) E(0.0 0.0 0.0)>
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[6.28 54.0 1]
}

joint wrist_3_joint (wrist_2_link wrist_3_link) {  
type:hingeX
axis:[0 1 0]
A:<t(0.0 0.0 0.12) E(0.0 0.0 0.0)>
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[6.28 54.0 1]
}

joint ee_fixed_joint (wrist_3_link ee_link) {  
type:rigid
A:<t(0.0 0.117 0.0) E(0.0 0.0 1.5707963267948966)>
}

joint base_link-base_fixed_joint (base_link base) {  
type:rigid
A:<t(0 0 0) E(0 0 -3.141592653589793)>
}

joint wrist_3_link-tool0_fixed_joint (wrist_3_link tool0) {  
type:rigid
A:<t(0 0.117 0) E(-1.5707963267948966 0 0)>
}

joint world_joint (world base_link) {  
type:rigid
A:<t(0.0 0.0 0.0) E(0.0 0.0 0.0)>
}

