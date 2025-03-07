# %%
from freesplatter.webui.runner import FreeSplatterRunner
import torch
import os
# export GRADIO_TEMP_DIR="/path/to/temp"
os.environ['GRADIO_TEMP_DIR'] = "./results"
runner = FreeSplatterRunner(device='cuda')
# %%
from pathlib import Path as P
image_files = sorted([str(i) for i in P('./examples/views_to_3d/laptop/art_0/rgb').rglob('*.png')])
cache_dir = P('./laptop/close_pose/art_0')
cache_dir.mkdir(exist_ok=True, parents=True)
_ = runner.run_views_to_3d(image_files=image_files,
                       do_rembg=False,
                       gs_type='3DGS',
                       mesh_reduction=0.5,
                       cache_dir=str(cache_dir),
                       )
# %%
image_files = sorted([str(i) for i in P('./examples/views_to_3d/laptop/art_1/rgb').rglob('*.png')])
cache_dir = P('./laptop/close_pose/art_1')
cache_dir.mkdir(exist_ok=True, parents=True)
_ = runner.run_views_to_3d(image_files=image_files,
                       do_rembg=False,
                       gs_type='3DGS',
                       mesh_reduction=0.5,
                       cache_dir=str(cache_dir),
                       )
# %%
