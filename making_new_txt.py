FILE_NAMES = ['1.txt', '2.txt', '3.txt']


def main():
    files = []
    for file_name in FILE_NAMES:
        files.append(build_file(file_name))
    files.sort(key=sort_by_lines_count)

    with open('new_file.txt', 'w') as f:
        for file in files:
            f.write(f"{file['name']}\n")
            f.write(f"{file['lines_count']}\n")
            for line in file['content']:
                f.write(f'{line}\n')


def sort_by_lines_count(item):
    return item['lines_count']


def build_file(file_name):
    lines = []

    with open(file_name) as file:
        for line in file:
            lines.append(line.strip())

    return {'name': file_name, 'content': lines, 'lines_count': len(lines)}


main()
