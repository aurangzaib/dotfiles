import os
import glob

files_folder = "tobe_renamed"
original_filenames = glob.glob("{}{}".format(files_folder, "/*"))

for index, filename in enumerate(original_filenames):
  initials = filename.split('/')[-1]
  _name_ = initials.split('.')[0]
  _format_ = initials.split('.')[-1]
  _new_name_ = "{}/{}_{}.{}".format(files_folder, _name_, index, _format_)
  # print("old: ", filename, " new: ", _new_name_)
  os.rename(filename, _new_name_)
