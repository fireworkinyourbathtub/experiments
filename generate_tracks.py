import os
import sys
import yaml
import re

from typing import Dict, List, Any

# constants {{{1
EXPERIMENTS_DIR = 'experiments'

README_INFO = '''
# experiments

My musical experiments

Sometimes I write songs, and these are all of them. They are all numbered and all have names as well.

PyYAML is needed to run the tracklist generation script.

*this README file is autogenerated. any modifications to the information here should be made to the `README_INFO` variable in the `generate_tracks.py` script*

'''

FILE_CLASSIFICATIONS = {
    re.compile(r'final.(mp3|flac)'): 'final track',
    re.compile(r'final.ly'): 'final Lilypond score',
    re.compile(r'final.(band|mmpz)'): 'final multitrack',
    re.compile(r'finalmultitrack.tar.gz'): 'compressed archive of GarageBand multitrack',
    re.compile(r'finalmultitrack.zip'): 'zipped GarageBand multitrack',
}

# Track class {{{1
class Track:
    def __init__(self, dir_name: str):
        self.dir_name = dir_name
        self.experiment_dir = os.path.join(EXPERIMENTS_DIR, dir_name)

        self.metadata_file = os.path.join(self.experiment_dir, 'metadata.yaml')
        self.categorized_files: Dict[str, str] = {}
        self.other_files: List[str] = []

        self.__read_metadata()
        self.__categorize_files()

    def __read_metadata(self) -> None:
        try:
            with open(self.metadata_file, 'r') as f:
                metadata: Dict[str, Any] = yaml.full_load(f)

                def read_from_metadata(key: str) -> Any:
                    if key in metadata:
                        return metadata[key]
                    else:
                        raise Exception(f"metadata for '{self.dir_name}' is missing key '{key}'")

                track_name = read_from_metadata('name')
                if track_name:
                    self.name = track_name
                else:
                    self.name = 'Untitled'

                self.number = read_from_metadata('number')

                self.made_with = read_from_metadata('made-with')

                self.finished = read_from_metadata('finished')

                track_description = read_from_metadata('description')
                if track_description:
                    self.description = track_description
                else:
                    self.description = "No description\n"

        except FileNotFoundError as exc:
            raise Exception(f"track '{self.dir_name}' is missing metadata file at '{self.metadata_file}'")

    def __categorize_files(self) -> None:
        for file_name in os.listdir(os.path.join(self.experiment_dir, 'files')):
            found_classification = False
            for (file_re, file_classification) in FILE_CLASSIFICATIONS.items():
                if file_re.fullmatch(file_name):
                    if file_classification in self.categorized_files:
                        raise Exception(f"track '{self.dir_name}' has multiple files with classification {file_classification}")

                    self.categorized_files[file_classification] = file_name
                    found_classification = True
                    break

            if not found_classification:
                self.other_files.append(file_name)

# utilities {{{1
def escape_file_path(path):
    return path.replace(' ', '%20')
# read tracks {{{1
def read_tracks() -> Dict[int, Track]:
    tracks: Dict[int, Track] = {}
    for track_dir in os.listdir('experiments'):
        track = Track(track_dir)

        if track.number in tracks:
            raise Exception(f"track '{track_dir}' has same number ({track.number}) as track '{tracks[track.number].dir_name}'")
        else:
            tracks[track.number] = track

    return tracks
# check tracks {{{1
def check_track_keys(tracks: Dict[int, Track]) -> None:
    track_keys = sorted(list(tracks.keys()))
    last_key, track_keys = track_keys[0], track_keys[1:]

    assert last_key == 1, 'lowest track number needs to be 1'

    for i in track_keys:
        if i != last_key + 1:
            raise Exception(f"track numbers skip from {last_key} (from '{tracks[last_key].dir_name}') to {i} (from '{tracks[i].dir_name}')")

        last_key = i
# generating things {{{1
def generate_readme(track: Track) -> None:
    with open(os.path.join(EXPERIMENTS_DIR, track.dir_name, 'README.md'), 'w') as f:
        made_with_str = ', '.join(track.made_with) if isinstance(track.made_with, list) else track.made_with

        f.write((f'# {track.number}: {track.name}\n'
                  '\n'
                 f'finished: {"yes" if track.finished else "no"}\n'
                  '\n'
                 f'made with {made_with_str}\n'
                  '\n'
                  '## Description\n'
                  '\n'
                 f'{track.description}'
                  '\n'
                  '## Files\n'))

        for fclass, fi in track.categorized_files.items():
            f.write(f'- [{fclass} ({fi})]({escape_file_path(os.path.join("files", fi))})\n')
        for fi in track.other_files:
            f.write(f'- [{fi}]({escape_file_path(os.path.join("files", fi))})\n')

def export_table(tracks: Dict[int, Track]) -> None:
    cols = ['Number', 'Name', 'Finished', 'Files']

    header_row    = '|Number|Name|Finished|Files|\n'
    delimiter_row = '|-----:|----|--------|-----|\n'

    rows = [header_row, delimiter_row]

    # TODO: add track length to table
    for (_, track) in sorted(tracks.items(), key=lambda x: x[0]):
        track_readme_path = os.path.join(EXPERIMENTS_DIR, track.dir_name)

        row_files = [f'[{category} ({file_name})]({escape_file_path(os.path.join(track.experiment_dir, "files", file_name))})' for (category, file_name) in track.categorized_files.items()] + \
                    [f'[{file_name}]({escape_file_path(os.path.join(track.experiment_dir, "files", file_name))})' for file_name in track.other_files]

        row_files_str = ', '.join(row_files)

        row = f'|{track.number}|[{track.name}]({escape_file_path(track_readme_path)})|{"yes" if track.finished else "no"}|{row_files_str}|\n'

        rows.append(row)

    with open('README.md', 'w') as f:
        f.write(README_INFO)
        f.write('## Tracks\n\n')
        f.writelines(rows)
# main {{{1
if __name__ == '__main__':
    ts = read_tracks()

    check_track_keys(ts)

    for tr in ts.values():
        generate_readme(tr)

    export_table(ts)
