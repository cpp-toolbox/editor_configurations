import os
import subprocess

script_dir = os.path.dirname(os.path.abspath(__file__))
vim_script_path = os.path.join(script_dir, 'cpp_terminal_autostart.vim')
command = ['nvim', '-S', vim_script_path]
subprocess.run(command)
