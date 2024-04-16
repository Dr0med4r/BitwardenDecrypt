#!/usr/bin/env python

from setuptools import setup, find_packages

setup(name='BitwardenDecrypt',
      version='1.6',
      # Modules to import from other scripts:
      packages=find_packages(),
      # Executables
      scripts=["BitwardenDecrypt.py"],
     )
