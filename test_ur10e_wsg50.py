from robosuite.models import MujocoWorldBase

world = MujocoWorldBase()

from robosuite.models.robots import Panda, UR10e

# mujoco_robot = Panda()
mujoco_robot = UR10e()

from robosuite.models.grippers import gripper_factory

gripper = gripper_factory('Robotiq85Gripper')
mujoco_robot.add_gripper(gripper)

mujoco_robot.set_base_xpos([0, 0, 0])
world.merge(mujoco_robot)

from robosuite.models.arenas import TableArena

mujoco_arena = TableArena()
mujoco_arena.set_origin([0.8, 0, 0])
world.merge(mujoco_arena)

from robosuite.models.objects import BallObject
from robosuite.utils.mjcf_utils import new_joint

sphere = BallObject(
    name="sphere",
    size=[0.04],
    rgba=[0, 0.5, 0.5, 1]).get_obj()
sphere.set('pos', '1.0 0 1.0')
world.worldbody.append(sphere)

model = world.get_model(mode="mujoco")

import mujoco
from mujoco_viewer import MujocoViewer

# Create the data object
data = mujoco.MjData(model)

# Launch Mujoco viewer
viewer = MujocoViewer(model, data)

while True:
    mujoco.mj_step(model, data)  # Step the simulation
    viewer.render()              # Render the visualization