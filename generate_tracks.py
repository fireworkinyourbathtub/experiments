import os
import sys
import yaml

# constants {{{1
EXPERIMENTS_DIR = 'experiments'

README_INFO = '''
# experiments

My musical experiments

Sometimes I write songs, and these are all of them. They are all numbered and all have names as well.

PyYAML is needed to run the tracklist generation script.

*this README file is autogenerated. any modifications to the information here should be made to the `README_INFO` variable in the `generate_tracks.py` script*

'''

# as of Python 3.7, dictionaries remember insertion order, so the links in the table and in the readmes will be generated in this order
# https://stackoverflow.com/questions/39980323/are-dictionaries-ordered-in-python-3-6
EXT_CLASSIFICATIONS = {
    '.band': 'GarageBand multitrack project file',
    '.mp3': 'mp3 audio file',
    '.flac': 'flac audio file',
}
# Track class {{{1
class Track:
    def __init__(self, dir_name):
        self.dir_name = dir_name
        self.experiment_dir = os.path.join(EXPERIMENTS_DIR, dir_name)
        self.files = {}

        self.__read_metadata()
        self.__categorize_files()

    def __read_metadata(self):
        try:
            with open(os.path.join(self.experiment_dir, 'metadata.yaml'), 'r') as f:
                metadata = yaml.full_load(f)

                def read_from_metadata(key):
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

    def __categorize_files(self):
        for f in os.listdir(os.path.join(self.experiment_dir, 'files')):
            name, ext = os.path.splitext(f)

            assert name == self.dir_name, f"track file '{f}' does not have the same name as folder '{self.dir_name}'"

            ext_classification = EXT_CLASSIFICATIONS[ext]

            if ext_classification in self.files:
                raise Exception("track '{self.dir_name}' has two files classified as '{ext_classification}'")
            else:
                self.files[ext_classification] = f

# read tracks {{{1
def read_tracks():
    tracks = {}
    for track_dir in os.listdir('experiments'):
        track = Track(track_dir)

        if track.number in tracks:
            raise Exception(f"track '{track_dir}' has same number ({track.number}) as track '{tracks[track.number].dir_name}'")
        else:
            tracks[track.number] = track

    return tracks
# check tracks {{{1
def check_track_keys(tracks):
    track_keys = sorted(list(tracks.keys()))
    last_key, track_keys = track_keys[0], track_keys[1:]

    assert last_key == 1, 'lowest track number needs to be 1'

    for i in track_keys:
        if i != last_key + 1:
            raise Exception(f"track numbers skip from {last_key} (from '{tracks[last_key].dir_name}') to {i} (from '{tracks[i].dir_name}')")

        last_key = i
# generating things {{{1
def generate_readme(track):
    with open(os.path.join(EXPERIMENTS_DIR, track.dir_name, 'README.md'), 'w') as f:
        f.write((f'# {track.number}: {track.name}\n'
                  '\n'
                 f'finished: {"yes" if track.finished else "no"}\n'
                  '\n'
                 f'made with {track.made_with}\n'
                  '\n'
                  '---\n'
                  '\n'
                 f'{track.description}\n'
                  '\n'
                  '---\n'))

        for fclass, fi in track.files.items():
            f.write(f'[{fclass}]({os.path.join("files", fi)})\n\n')


def export_table(tracks):
    file_cls = list(EXT_CLASSIFICATIONS.values())
    cols = ['Number', 'Name', 'Finished'] + file_cls

    header_row = '|' + '|'.join(cols) + '|\n'
    delimiter_row = '|' + '|'.join(['-:' if col == 'Number' else '-' for col in cols]) + '|\n'

    rows = [header_row, delimiter_row]

    # TODO: add track length to table
    for (_, track) in sorted(tracks.items(), key=lambda x: x[0]):
        track_readme_path = os.path.join(EXPERIMENTS_DIR, track.dir_name)
        row_beginning = f'{track.number}|[{track.name}]({track_readme_path})|{"yes" if track.finished else "no"}'
        row_files = '|'.join([f'[file]({os.path.join(track.experiment_dir, "files", track.files[cl])})' if cl in track.files else '' for cl in file_cls])
        rows.append(f'|{row_beginning}|{row_files}|\n')

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
