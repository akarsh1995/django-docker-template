import os
import sys
import jinja2
from pathlib import Path

if __name__=='__main__':
    src = sys.argv[1]
    dest = sys.argv[2]
    uwsgi_input_file = Path(src)
    write_location = Path(dest)
    output_ini = jinja2.Template(uwsgi_input_file.read_text()).render(env=os.environ)
    write_location.write_text(output_ini)
