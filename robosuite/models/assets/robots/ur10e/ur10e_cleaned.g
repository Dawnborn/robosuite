ur10e_robot_link: {  }
robot_base_joint(ur10e_robot_link): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1] }
base_link(robot_base_joint): {  }
base_link>base_link-base_link_inertia(base_link): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1] }
base_link>base_link-base_fixed_joint(base_link): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1] }
base_link-base_link_inertia(base_link>base_link-base_link_inertia): { joint: rigid }
base_link-base_fixed_joint(base_link>base_link-base_fixed_joint): { joint: rigid }
base_link_inertia(base_link-base_link_inertia): { mass: 4, inertia: [0.8, 0.8, 0.8], inertiaTensor: [0.00610633, 0, 0, 0.00610633, 0, 0.01125] }
base(base_link-base_fixed_joint): {  }
base_link_inertia_1(base_link_inertia): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/base.ply', colorName: "LightGrey", visual: True }
base_link_inertia_0(base_link_inertia): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/base.stl', contact: -2 }
base_link_inertia>shoulder_pan_joint(base_link_inertia): { rel: [0, 0, 0.180933, 0.707107, -2.11935e-08, -0.707107, -2.11935e-08] }
shoulder_pan_joint(base_link_inertia>shoulder_pan_joint): { joint: hingeX, limits: [-6.13319, 6.13319, 2.0944, 330, 1], ctrl_limits: [2.0944, 330, 1] }
shoulder_link(shoulder_pan_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 7.778, inertia: [1.5556, 1.5556, 1.5556], inertiaTensor: [0.0314743, 0, 0, 0.0314743, 0, 0.0218756] }
shoulder_link_1(shoulder_link): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/shoulder.ply', colorName: "LightGrey", visual: True }
shoulder_link_0(shoulder_link): { rel: [0, 0, 0, 6.12323e-17, 0, 0, 1], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/shoulder.stl', contact: -2 }
shoulder_link>shoulder_lift_joint(shoulder_link): { rel: [2.6631e-05, 0, 0, 0.500067, 0.499933, -0.500067, -0.499933] }
shoulder_lift_joint(shoulder_link>shoulder_lift_joint): { joint: hingeX, limits: [-6.13319, 6.13319, 2.0944, 330, 1], ctrl_limits: [2.0944, 330, 1] }
upper_arm_link(shoulder_lift_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 12.93, inertia: [2.586, 2.586, 2.586], inertiaTensor: [0.421754, 0, 0, 0.421754, 0, 0.0363656] }
upper_arm_link_1(upper_arm_link): { rel: [0, 0, 0.1762, 0.5, 0.5, -0.5, -0.5], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/upperarm.ply', colorName: "LightGrey", visual: True }
upper_arm_link_0(upper_arm_link): { rel: [0, 0, 0.1762, 0.5, 0.5, -0.5, -0.5], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/upperarm.stl', contact: -2 }
upper_arm_link>elbow_joint(upper_arm_link): { rel: [-0.612735, 0, 0, 0.707188, 0.000558401, -0.707025, -0.000559606] }
elbow_joint(upper_arm_link>elbow_joint): { joint: hingeX, limits: [-2.99159, 2.99159, 3.14159, 150, 1], ctrl_limits: [3.14159, 150, 1] }
forearm_link(elbow_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 3.87, inertia: [0.774, 0.774, 0.774], inertiaTensor: [0.110793, 0, 0, 0.110793, 0, 0.0108844] }
forearm_link_1(forearm_link): { rel: [0, 0, 0.0393, 0.5, 0.5, -0.5, -0.5], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/forearm.ply', colorName: "LightGrey", visual: True }
forearm_link_0(forearm_link): { rel: [0, 0, 0.0393, 0.5, 0.5, -0.5, -0.5], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/forearm.stl', contact: -2 }
forearm_link>wrist_1_joint(forearm_link): { rel: [-0.571606, -0.00096818, 0.174812, 0.707169, 0.00195727, -0.70704, -0.00195893] }
wrist_1_joint(forearm_link>wrist_1_joint): { joint: hingeX, limits: [-6.13319, 6.13319, 3.14159, 56, 1], ctrl_limits: [3.14159, 56, 1] }
wrist_1_link(wrist_1_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 1.96, inertia: [0.392, 0.392, 0.392], inertiaTensor: [0.00510825, 0, 0, 0.00510825, 0, 0.0055125] }
wrist_1_link_1(wrist_1_link): { rel: [0, 0, -0.135, 0.707107, 0.707107, 0, 0], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/wrist1.ply', colorName: "LightGrey", visual: True }
wrist_1_link_0(wrist_1_link): { rel: [0, 0, -0.135, 0.707107, 0.707107, 0, 0], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/wrist1.stl', contact: -2 }
wrist_1_link>wrist_2_joint(wrist_1_link): { rel: [8.19012e-05, -0.119953, 0.000207127, 0.500431, 0.499569, -0.500432, -0.499568] }
wrist_2_joint(wrist_1_link>wrist_2_joint): { joint: hingeX, limits: [-6.13319, 6.13319, 3.14159, 56, 1], ctrl_limits: [3.14159, 56, 1] }
wrist_2_link(wrist_2_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 1.96, inertia: [0.392, 0.392, 0.392], inertiaTensor: [0.00510825, 0, 0, 0.00510825, 0, 0.0055125] }
wrist_2_link_1(wrist_2_link): { rel: [0, 0, -0.12, 1, 0, 0, 0], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/wrist2.ply', colorName: "LightGrey", visual: True }
wrist_2_link_0(wrist_2_link): { rel: [0, 0, -0.12, 1, 0, 0, 0], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/wrist2.stl', contact: -2 }
wrist_2_link>wrist_3_joint(wrist_2_link): { rel: [7.6106e-05, 0.116027, 8.90868e-05, 0.500192, -0.499808, -0.500192, 0.499808] }
wrist_3_joint(wrist_2_link>wrist_3_joint): { joint: hingeX, limits: [-6.13319, 6.13319, 3.14159, 56, 1], ctrl_limits: [3.14159, 56, 1] }
wrist_3_link(wrist_3_joint): { rel: [-0, -0, -0, -0.707107, 0, -0.707107, 0], mass: 0.202, inertia: [0.0404, 0.0404, 0.0404], inertiaTensor: [0.000144346, 0, 0, 0.000144346, 0, 0.000204525] }
wrist_3_link_1(wrist_3_link): { rel: [0, 0, -0.1168, 0.707107, 0.707107, 0, 0], shape: mesh, color: [0.7, 0.7, 0.7, 1], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/visual/wrist3.ply', colorName: "LightGrey", visual: True }
wrist_3_link_0(wrist_3_link): { rel: [0, 0, -0.1168, 0.707107, 0.707107, 0, 0], shape: mesh, color: [0.8, 0.2, 0.2, 0.5], mesh: '/home/sereact-mathias/git/sereact/capto/assets/sim_models/robots/ur10e/meshes/collision/wrist3.stl', contact: -2 }
wrist_3_link>wrist_3-flange(wrist_3_link): { rel: [0, 0, 0, 0.5, -0.5, -0.5, -0.5] }
wrist_3-flange(wrist_3_link>wrist_3-flange): { joint: rigid }
flange(wrist_3-flange): {  }
flange>flange-tool0(flange): { rel: [0, 0, 0, 0.5, 0.5, 0.5, 0.5] }
flange-tool0(flange>flange-tool0): { joint: rigid }
tool0(flange-tool0): {  }
robot_flange(tool0): { rel: [0, 0, 0, -1, 0, 1.35525e-20, 0], shape: marker, size: [0.1], color: [0.8, 0.8, 0.8] }