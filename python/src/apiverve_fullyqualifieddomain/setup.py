from setuptools import setup, find_packages

import os
lib_folder = os.path.dirname(os.path.realpath(__file__))
requirements_file = os.path.join(lib_folder, 'requirements.txt')
install_requires = ["requests >= 2.25.1", "setuptools >= 56.0.0"]
if os.path.exists(requirements_file):
    with open(requirements_file, 'r') as f:
        install_requires = f.read().splitlines()

setup(
    name='apiverve_fullyqualifieddomain',
    version='1.2.3',
    packages=find_packages(),
    include_package_data=True,
    install_requires=install_requires,
    description='Fully Qualified Domain resolves an IP address to its fully qualified domain name using reverse DNS PTR records. It returns the host FQDN, base domain, TLD, subdomain, and domain level count.',
    author='APIVerve',
    author_email='hello@apiverve.com',
    url='https://apiverve.com/marketplace/fullyqualifieddomain?utm_source=pypi&utm_medium=referral&utm_content=homepage',
    classifiers=[
        'Programming Language :: Python :: 3',
        'Operating System :: OS Independent',
    ],
    python_requires='>=3.6',
)