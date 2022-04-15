import os
import numpy as np


def get_paper_year(filepath):
    filename = os.path.split(filepath)[-1]
    try:
        year_str = filename.split('(')[1].split(')')[0]
    except:
        print('year_str failed')
        print(filename)
        raise SystemExit
    try:
        paper_year = int(year_str[:4]) # assuming yyyy format
        return paper_year
    except:
        print('int(year) failed')
        print(filename)
        print(year_str)
        raise SystemExit


def get_paper_list(path):
    papers = []
    files = os.listdir(path)
    for file in files:
        root, ext  = os.path.splitext(file)
        ext = ext.lower()
        if ext == '.pdf':
            papers.append(f'{path}/{root}{ext}')
    return papers


def get_paper_years(path):
    years = set()
    for paper in get_paper_list(path):
        years.add(get_paper_year(paper))
    return sorted(years)


def make_decade_ranges(years):
    block_size = 10 # decade = 10 years
    ranges = []
    min_year = np.round(min(years), -1) - 10 # Round to 10s digit
    max_year = np.round(max(years), -1) + 10 # Round up
    #print(min_year, max_year, '\n', years)
    for start_year in range(min_year, max_year+1, block_size):
        end_year = start_year + block_size - 1
        current_range = (start_year, end_year)
        #print(current_range)
        if np.any([(year >= start_year and year <= end_year) for year in years]):
            ranges.append(current_range)
    return tuple(ranges)


def make_year_folders(path, ranges, dry_run=False):
    folders = []
    for (start_year, end_year) in ranges:
        folders.append(f'{path}/{start_year}-{end_year}')
        if dry_run:
            print(folders[-1])
        else:
            os.makedirs(folders[-1])
    return tuple(folders)


def get_range(folder_name):
    range_str = os.path.split(folder_name)[-1]
    range_min = int(range_str.split('-')[0])
    range_max = int(range_str.split('-')[1])
    return (range_min, range_max)


def year_in_range(year, year_range):
    if year >= min(year_range):
        if year <= max(year_range):
            return True
    return False


def put_papers_in_folders(path, folders, dry_run=False):
    ranges = [get_range(folder) for folder in folders]
    for paper in get_paper_list(path):
        paper_year = get_paper_year(paper)
        for idx, year_range in enumerate(ranges):
            if year_in_range(paper_year, year_range):
                folder = folders[idx]
                source = f'{paper}'
                paper_name = os.path.basename(paper)
                target = f'{folder}/{paper_name}'
                if dry_run:
                    print(f'cp {source} {target}')
                else:
                    os.rename(source, target)
                break


if __name__ == "__main__":
    path = '/Users/dylan/My Drive (dpaiton@gmail.com)/Literature/Papers'
    block_size = 10
    dry_run = False
    years = get_paper_years(path)
    ranges = make_decade_ranges(years)
    folders = make_year_folders(path, ranges, dry_run)
    put_papers_in_folders(path, folders, dry_run)
