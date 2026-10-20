from setuptools import setup, find_packages

setup(
    name='apiverve_fullyqualifieddomain',
    version='1.2.2',
    packages=find_packages(),
    include_package_data=True,
    install_requires=[
        'requests',
        'setuptools'
    ],
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
