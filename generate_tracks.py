import os
import sys
import yaml

EXPERIMENTS_DIR = 'experiments'

ext_classifications = {
    '.mp3': 'mp3 audio file',
    '.aiff': 'aiff audio file',
}

class Track:
    def __init__(self, dir_name):
        self.dir_name = dir_name
        self.metadata_file = os.path.join(EXPERIMENTS_DIR, dir_name, "metadata.yaml")
        self.file_paths = os.listdir(os.path.join(EXPERIMENTS_DIR, dir_name, "files"))
        self.files = {}

        self.read_metadata()
        self.categorize_files()

    def read_metadata(self):
        try:
            with open(self.metadata_file, 'r') as f:
                metadata = yaml.full_load(f)

                def read_from_metadata(key):
                    if key in metadata:
                        return metadata[key]
                    else:
                        raise Exception(f"metadata for '{self.dir_name}' is missing key '{key}'")

                self.name = read_from_metadata('name')
                self.number = read_from_metadata('number')
                self.made_with = read_from_metadata('made-with')
                self.finished = read_from_metadata('finished')
                self.description = read_from_metadata('description')

        except FileNotFoundError as exc:
            raise Exception(f"track '{self.dir_name}' is missing metadata file at '{self.metadata_file}'")

    def categorize_files(self):
        for f in self.file_paths:
            name, ext = os.path.splitext(f)

            assert name == self.dir_name, f"track file '{f}' does not have the same name as folder '{self.dir_name}'"

            ext_classification = ext_classifications[ext]

            if ext_classification in self.files:
                raise Exception("track '{self.dir_name}' has two files classified as ext_classification")
            else:
                self.files[ext_classification] = f

def read_tracks():
    tracks = {}
    for track_dir in os.listdir('experiments'):
        track = Track(track_dir)

        if track.number in tracks:
            raise Exception(f"track '{track_dir}' has same number ({track.number}) as track '{tracks[track.number].dir_name}'")
        else:
            tracks[track.number] = track

    return tracks

def check_track_keys(tracks):
    track_keys = sorted(list(tracks.keys()))
    last_key, track_keys = track_keys[0], track_keys[1:]

    assert last_key == 1, 'lowest track number needs to be 1'

    for i in track_keys:
        if i != last_key + 1:
            raise Exception(f"track numbers skip from {last_key} (from '{tracks[last_key].dir_name}') to {i} (from '{tracks[i].dir_name}')")

        last_key = i

def generate_readme(track):
    with open(os.path.join(EXPERIMENTS_DIR, track.dir_name, 'README.md'), 'w') as f:
        f.write((f'# {track.name}\n'
                  '\n'
                 f'{track.description}\n'))


def export_table(tracks):
    file_cls = list(ext_classifications.values())
    cols = ['Number', 'Name', 'Finished', 'Made with'] + file_cls

    header_row = '|' + '|'.join(cols) + '|\n'
    delimiter_row = '|' + '|'.join(['-:' if col == 'Number' else '-' for col in cols]) + '|\n'

    rows = [header_row, delimiter_row]

    for (_, track) in sorted(tracks.items(), key=lambda x: x[0]):
        track_readme_path = os.path.join(EXPERIMENTS_DIR, track.dir_name)
        row_beginning = f'{track.number}|[{track.name}]({track_readme_path})|{"yes" if track.finished else "no"}|{track.made_with}'
        row_files = '|'.join([f'[file]({os.path.join(EXPERIMENTS_DIR, track.dir_name, "files", track.files[cl])})' if cl in track.files else '' for cl in file_cls])
        rows.append(f'|{row_beginning}|{row_files}|\n')

    with open('TRACKS.md', 'w') as f:
        f.write('# Tracks\n\n')
        f.writelines(rows)

ts = read_tracks()
check_track_keys(ts)
for tr in ts.values():
    generate_readme(tr)
export_table(ts)
