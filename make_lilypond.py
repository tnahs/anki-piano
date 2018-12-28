#!/usr/bin/env python

import json
from pathlib import Path
from datetime import datetime
from jinja2 import Environment, FileSystemLoader


def main():
    """
    {
        "name": "",
        "octave": "",
        "clef": "",
        "treble_note": "",
        "treble_octaves": "",
        "bass_note": "",
        "bass_octaves": "",
        "order": "",
        "filename": ""
    }
    """

    root = Path(__file__).parent
    date = datetime.today().strftime("%Y %B %d")

    note_data_json = "data/piano-to-lilypond-data.json"
    template_name = "lilypond/template.jinja2"
    output_folder_name = "lilypond/piano_notes"

    jinja_env = Environment(
        loader=FileSystemLoader(str(root)),
        trim_blocks=True
        )

    jinja_template = jinja_env.get_template(template_name)

    with open(root / note_data_json, "r") as f:
        notes = json.load(f)

    for note in notes:

        filename = f"{note['filename']}.ly"
        output_path = root / output_folder_name / filename

        w = jinja_template.render(date=date, note=note)

        with open(output_path, "w") as f:
            f.write(w)


if __name__ == "__main__":

    main()
