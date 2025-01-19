body base_link {
}

body base_link_inertia {
mass:4.0
inertiaTensor:[0.0061063308908 0.0 0.0 0.0061063308908 0.0 0.01125]
}

shape visual base_link_inertia_1 (base_link_inertia) {  
rel=<T t(0 0 0) E(0 0 3.141592653589793)>
type:mesh mesh:'meshes/visual/base.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision base_link_inertia_0 (base_link_inertia) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 0) E(0 0 3.141592653589793)>
type:mesh mesh:'meshes/collision/base.stl'
 contact:-2 }

body shoulder_link {
mass:7.778
inertiaTensor:[0.03147431257693659 0.0 0.0 0.03147431257693659 0.0 0.021875624999999996]
}

shape visual shoulder_link_1 (shoulder_link) {  
rel=<T t(0 0 0) E(0 0 3.141592653589793)>
type:mesh mesh:'meshes/visual/shoulder.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision shoulder_link_0 (shoulder_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 0) E(0 0 3.141592653589793)>
type:mesh mesh:'meshes/collision/shoulder.stl'
 contact:-2 }

body upper_arm_link {
mass:12.93
inertiaTensor:[0.42175380379841093 0.0 0.0 0.42175380379841093 0.0 0.03636562499999999]
}

shape visual upper_arm_link_1 (upper_arm_link) {  
rel=<T t(0 0 0.1762) E(1.5707963267948966 0 -1.5707963267948966)>
type:mesh mesh:'meshes/visual/upperarm.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision upper_arm_link_0 (upper_arm_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 0.1762) E(1.5707963267948966 0 -1.5707963267948966)>
type:mesh mesh:'meshes/collision/upperarm.stl'
 contact:-2 }

body forearm_link {
mass:3.87
inertiaTensor:[0.11079302548902206 0.0 0.0 0.11079302548902206 0.0 0.010884375]
}

shape visual forearm_link_1 (forearm_link) {  
rel=<T t(0 0 0.0393) E(1.5707963267948966 0 -1.5707963267948966)>
type:mesh mesh:'meshes/visual/forearm.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision forearm_link_0 (forearm_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 0.0393) E(1.5707963267948966 0 -1.5707963267948966)>
type:mesh mesh:'meshes/collision/forearm.stl'
 contact:-2 }

body wrist_1_link {
mass:1.96
inertiaTensor:[0.005108247956699999 0.0 0.0 0.005108247956699999 0.0 0.005512499999999999]
}

shape visual wrist_1_link_1 (wrist_1_link) {  
rel=<T t(0 0 -0.135) E(1.5707963267948966 0 0)>
type:mesh mesh:'meshes/visual/wrist1.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_1_link_0 (wrist_1_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 -0.135) E(1.5707963267948966 0 0)>
type:mesh mesh:'meshes/collision/wrist1.stl'
 contact:-2 }

body wrist_2_link {
mass:1.96
inertiaTensor:[0.005108247956699999 0.0 0.0 0.005108247956699999 0.0 0.005512499999999999]
}

shape visual wrist_2_link_1 (wrist_2_link) {  
rel=<T t(0 0 -0.12) E(0 0 0)>
type:mesh mesh:'meshes/visual/wrist2.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_2_link_0 (wrist_2_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 -0.12) E(0 0 0)>
type:mesh mesh:'meshes/collision/wrist2.stl'
 contact:-2 }

body wrist_3_link {
mass:0.202
inertiaTensor:[0.00014434577559500002 0.0 0.0 0.00014434577559500002 0.0 0.00020452500000000002]
}

shape visual wrist_3_link_1 (wrist_3_link) {  
rel=<T t(0 0 -0.1168) E(1.5707963267948966 0 0)>
type:mesh mesh:'meshes/visual/wrist3.ply'
color:[0.7 0.7 0.7 1.0]
colorName:LightGrey
 visual }

shape collision wrist_3_link_0 (wrist_3_link) {  
 color:[.8 .2 .2 .5],
rel=<T t(0 0 -0.1168) E(1.5707963267948966 0 0)>
type:mesh mesh:'meshes/collision/wrist3.stl'
 contact:-2 }

body base {
}

body flange {
}

body tool0 {
}

joint base_link-base_link_inertia (base_link base_link_inertia) {  
type:rigid
A:<t(0 0 0) E(0 0 3.141592653589793)>
}

joint shoulder_pan_joint (base_link_inertia shoulder_link) {  
type:hingeX
axis:[0 0 1]
A:<t(0.         0.         0.18093265) E( 0.00000000e+00  0.00000000e+00 -5.99442711e-08)>
limits:[-6.133185307179586 6.133185307179586]
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[2.0943951023931953 330.0 1]
}

joint shoulder_lift_joint (shoulder_link upper_arm_link) {  
type:hingeX
axis:[0 0 1]
A:<t(2.66310255e-05 0.00000000e+00 0.00000000e+00) E( 1.57052728e+00 -5.03840511e-07  1.35555908e-10)>
limits:[-6.133185307179586 6.133185307179586]
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[2.0943951023931953 330.0 1]
}

joint elbow_joint (upper_arm_link forearm_link) {  
type:hingeX
axis:[0 0 1]
A:<t(-0.61273459  0.          0.        ) E( 1.58110040e-03  2.30173966e-04 -1.52327796e-06)>
limits:[-2.991592653589793 2.991592653589793]
limits:[-3.141592653589793 3.141592653589793]
ctrl_limits:[3.141592653589793 150.0 1]
}

joint wrist_1_joint (forearm_link wrist_1_link) {  
type:hingeX
axis:[0 0 1]
A:<t(-0.57160618 -0.00096818  0.17481173) E( 5.53835843e-03  1.82430905e-04 -1.84138275e-06)>
limits:[-6.133185307179586 6.133185307179586]
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[3.141592653589793 56.0 1]
}

joint wrist_2_joint (wrist_1_link wrist_2_link) {  
type:hingeX
axis:[0 0 1]
A:<t( 8.19012329e-05 -1.19953144e-01  2.07126610e-04) E( 1.56906960e+00 -2.03412944e-06  3.51239093e-09)>
limits:[-6.133185307179586 6.133185307179586]
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[3.141592653589793 56.0 1]
}

joint wrist_3_joint (wrist_2_link wrist_3_link) {  
type:hingeX
axis:[0 0 1]
A:<t(7.61059859e-05 1.16026896e-01 8.90867742e-05) E(-1.57002852e+00 -5.17297692e-07 -3.97187070e-10)>
limits:[-6.133185307179586 6.133185307179586]
limits:[-6.283185307179586 6.283185307179586]
ctrl_limits:[3.141592653589793 56.0 1]
}

joint base_link-base_fixed_joint (base_link base) {  
type:rigid
A:<t(0 0 0) E(0 0 3.141592653589793)>
}

joint wrist_3-flange (wrist_3_link flange) {  
type:rigid
A:<t(0 0 0) E(0 -1.5707963267948966 -1.5707963267948966)>
}

joint flange-tool0 (flange tool0) {  
type:rigid
A:<t(0 0 0) E(1.5707963267948966 0 1.5707963267948966)>
}
