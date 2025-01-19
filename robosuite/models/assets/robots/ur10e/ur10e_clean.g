ur10_robot_link 	{ }
robot_base_joint (ur10_robot_link) 	{ Q:<d(180 0 0 1)> }
base_link (robot_base_joint) 	{ , mass:4, inertiaTensor:[0.00610633, 0, 0, 0.00610633, 0, 0.01125] }
base_link_inertia_1 (robot_base_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/base.ply',, colorName:LightGrey, visual }
mov_col_frame_base_link_0 (robot_base_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/base.stl', contact:-2, }
base_link>shoulder_pan_joint (robot_base_joint) 	{  Q:<[0, 0, 0.181, 0.707107, 0, -0.707107, 0]> }
base_link>base_link-base_fixed_joint (robot_base_joint) 	{  Q:<[0, 0, 0, 6.12323e-17, 0, 0, -1]> }
shoulder_pan_joint (base_link>shoulder_pan_joint) 	{  joint:hingeX, limits:[-3.14159, 3.14159, 3.14, 330, 1] , ctrl_limits:[3.14, 330, 1] }
base_link-base_fixed_joint (base_link>base_link-base_fixed_joint) 	{  joint:rigid  }
shoulder_link (shoulder_pan_joint) 	{ , mass:7.778 Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]>, inertiaTensor:[0.0314743, 0, 0, 0.0314743, 0, 0.0218756] }
shoulder_link_1 (shoulder_pan_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/shoulder.ply', Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]>, colorName:LightGrey, visual }
mov_col_frame_shoulder_link_0 (shoulder_pan_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/shoulder.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]> }
shoulder_link>shoulder_lift_joint (shoulder_pan_joint) 	{  Q:<[0, 0.176, -0, -1.11022e-16, -0.707107, -0.707107, -1.11022e-16]> }
base (base_link-base_fixed_joint) 	{  }
shoulder_lift_joint (shoulder_link>shoulder_lift_joint) 	{  joint:hingeX, limits:[-3.14159, 3.14159, 3.14, 330, 1] , ctrl_limits:[3.14, 330, 1] }
upper_arm_link (shoulder_lift_joint) 	{ , mass:12.93 Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, inertiaTensor:[0.423074, 0, 0, 0.423074, 0, 0.0363656] }
upper_arm_link_1 (shoulder_lift_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/upperarm.ply', Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, colorName:LightGrey, visual }
mov_col_frame_upper_arm_link_0 (shoulder_lift_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/upperarm.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]> }
upper_arm_link>elbow_joint (shoulder_lift_joint) 	{  Q:<[-0.137, -3.04201e-17, 0.613, -1, 0, 0, 0]> }
# elbow_joint limits are set for elbow up
elbow_joint (upper_arm_link>elbow_joint) 	{  joint:hingeX, limits:[-3.14159, 3.14159, 3.14, 150, 1] , ctrl_limits:[3.14, 150, 1] }
forearm_link (elbow_joint) 	{ , mass:3.87 Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, inertiaTensor:[0.11059, 0, 0, 0.11059, 0, 0.0108844] }
forearm_link_1 (elbow_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/forearm.ply', Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, colorName:LightGrey, visual }
mov_col_frame_forearm_link_0 (elbow_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/forearm.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]> }
forearm_link>wrist_1_joint (elbow_joint) 	{  Q:<[0, 0, 0.571, -0.707107, -0.707107, -1.11022e-16, 0]> }

wrist_1_joint (forearm_link>wrist_1_joint) 	{  joint:hingeX, limits:[-3.14159, 3.14159, 6.28, 54, 1] , ctrl_limits:[6.28, 54, 1] }
wrist_1_link (wrist_1_joint) 	{ , mass:1.96 Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, inertiaTensor:[0.00510825, 0, 0, 0.00510825, 0, 0.0055125] }
wrist_1_link_1 (wrist_1_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/wrist1.ply', Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, colorName:LightGrey, visual }
mov_col_frame_wrist_1_link_0 (wrist_1_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/wrist1.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]> }
frame essential_mov_col_frame_wrist(wrist_1_joint){ shape:ssBox color:[1.,1.,1.,.3], Q:<t(0.1 0 0.05)>, size:[.2 0.1 .25 0.001], visual, contact:-2  }

wrist_1_link>wrist_2_joint (wrist_1_joint) 	{  Q:<[0.135, 2.9976e-17, 0, -0.5, 0.5, 0.5, 0.5]> }
wrist_2_joint (wrist_1_link>wrist_2_joint) 	{  joint:hingeX, limits:[-3.14159, 3.14159, 6.28, 54, 1] , ctrl_limits:[6.28, 54, 1] }
wrist_2_link (wrist_2_joint) 	{ , mass:1.96 Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]>, inertiaTensor:[0.00510825, 0, 0, 0.00510825, 0, 0.0055125] }
wrist_2_link_1 (wrist_2_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/wrist2.ply', Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]>, colorName:LightGrey, visual }
mov_col_frame_wrist_2_link_0 (wrist_2_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/wrist2.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, -0.707107, 0]> }
wrist_2_link>wrist_3_joint (wrist_2_joint) 	{  Q:<[0.12, 0, 2.66454e-17, -0.5, -0.5, -0.5, -0.5]> }
wrist_3_joint (wrist_2_link>wrist_3_joint) 	{  joint:hingeX, limits:[-4.2, 4.2, 6.28, 54, 1] , ctrl_limits:[6.28, 54, 1] }
wrist_3_link (wrist_3_joint) 	{ , mass:0.202 Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, inertiaTensor:[0.000144346, 0, 0, 0.000144346, 0, 0.000204525] }
wrist_3_link_1 (wrist_3_joint) 	{  shape:mesh, color:[0.7, 0.7, 0.7, 1], mesh:'meshes/visual/wrist3.ply', Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]>, colorName:LightGrey, visual }
mov_col_frame_wrist_3_link_0 (wrist_3_joint) 	{  shape:mesh, color:[0.8, 0.2, 0.2, 0.5], mesh:'meshes/collision/wrist3.stl', contact:-2, Q:<[-0, -0, -0, -0.707107, 0, 0, 0.707107]> }
wrist_3_link>ee_fixed_joint (wrist_3_joint) 	{  Q:<[0.117, 2.59792e-17, 0, -1, 0, 0, 0]> }
wrist_3_link>wrist_3_link-tool0_fixed_joint (wrist_3_joint) 	{  Q:<[0.117, 2.59792e-17, 0, -0.5, 0.5, -0.5, 0.5]> }
ee_fixed_joint (wrist_3_link>ee_fixed_joint) 	{  joint:rigid  }
wrist_3_link-tool0_fixed_joint (wrist_3_link>wrist_3_link-tool0_fixed_joint) 	{  joint:rigid  }
ee_link (ee_fixed_joint) 	{  }
mov_col_frame_ee_link_0 (ee_fixed_joint) 	{  shape:box, size:[0.15, 0.15, 0.15, 0], color:[0.8, 0.2, 0.2, 0.5], contact:-2, }
tool0 (wrist_3_link-tool0_fixed_joint) 	{  }

robot_flange(tool0) {shape:marker, size:[0.1] }

